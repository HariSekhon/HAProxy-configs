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

ifneq ("$(wildcard bash-tools/Makefile.in)", "")
	include bash-tools/Makefile.in
endif

REPO := HariSekhon/HAProxy-configs

.PHONY: build
build: init
	@echo =========================
	@echo HAProxy Configs Build
	@echo =========================
	@$(MAKE) git-summary
	$(MAKE) system-packages

.PHONY: init
init:
	git submodule update --init --recursive

#.PHONY: build
# space here prevents weird validation warning from check_makefile.sh => Makefile:40: warning: undefined variable `D'
#build : submodules system-packages
#	:

.PHONY: install
# space here prevents weird validation warning from check_makefile.sh => Makefile:40: warning: undefined variable `D'
install: build
	@:

.PHONY: test
test:
	@./check_haproxy_syntax.sh

.PHONY: clean
clean:
	@echo Nothing to clean
