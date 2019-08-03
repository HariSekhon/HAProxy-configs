#
#  Author: Hari Sekhon
#  Date: 2016-01-17 12:56:53 +0000 (Sun, 17 Jan 2016)
#
#  vim:ts=4:sts=4:sw=4:noet
#
#  https://github.com/harisekhon/haproxy-configs
#
#  If you're using my code you're welcome to connect with me on LinkedIn and optionally send me feedback
#
#  https://www.linkedin.com/in/harisekhon
#

SUDO := sudo

# must come after to reset SUDO_PERL/SUDO_PIP to blank if root
# EUID /  UID not exported in Make
# USER not populated in Docker
ifeq '$(shell id -u)' '0'
	#@echo "root UID detected, not calling sudo"
	SUDO :=
endif

.PHONY: build
build: system-packages
	git submodule update --init --recursive

.PHONY: system-packages
system-packages:
	if [ -x /sbin/apk ];        then $(MAKE) apk-packages; fi
	if [ -x /usr/bin/apt-get ]; then $(MAKE) apt-packages; fi
	if [ -x /usr/bin/yum ];     then $(MAKE) yum-packages; fi
	if [ -x /usr/local/bin/brew -a `uname` = Darwin ]; then $(MAKE) homebrew-packages; fi

.PHONY: apk-packages
apk-packages:
	$(SUDO) apk update
	$(SUDO) apk add haproxy

.PHONY: apt-packages
apt-packages:
	$(SUDO) apt-get update
	$(SUDO) apt-get install -y haproxy

.PHONY: homebrew-packages
homebrew-packages:
	# Sudo is not required as running Homebrew as root is extremely dangerous and no longer supported as Homebrew does not drop privileges on installation you would be giving all build scripts full access to your system
	# Fails if any of the packages are already installed, ignore and continue - if it's a problem the latest build steps will fail with missing headers
	brew install haproxy

.PHONY: yum-packages
yum-packages:
	$(SUDO) yum install -y haproxy

.PHONY: test
test:
	./check_haproxy_syntax.sh

.PHONY: update
update:
	git pull

.PHONY: update2
update2: update-no-recompile
	:

.PHONY: update-no-recompile
update-no-recompile:
	git pull
	git submodule update --init --recursive

.PHONY: clean
clean:
	@echo Nothing to clean

.PHONY: push
push:
	git push

.PHONY: travis
travis:
	travis_last_log.py /HAProxy-configs
