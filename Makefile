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

.PHONY: build
build:
	git submodule init
	git submodule update --recursive

.PHONY: test
test:
	./check_haproxy_syntax.sh

.PHONY: update
update:
	git pull

.PHONY: update-no-recompile
update-no-recompile:
	git pull

.PHONY: clean
clean:
	@echo Nothing to clean

.PHONY: push
push:
	git push
