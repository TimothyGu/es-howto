bs_installed  := $(shell command -v bikeshed 2> /dev/null)
svgo_installed  := $(shell command -v svgo 2> /dev/null)

.PHONY: all
all: index.html

index.html: index.bs
ifdef bs_installed
	bikeshed spec index.bs
else
	@echo "Can't find a local version of Bikeshed. To install it, visit:"
	@echo
	@echo "https://github.com/tabatkins/bikeshed/blob/master/docs/install.md"
	@echo
	@echo "Trying to build the spec using the online API at: https://api.csswg.org/bikeshed/"
	@echo "This will fail if you are not connected to the network."
	curl https://api.csswg.org/bikeshed/ -F file=@index.bs > index.html
endif

.PHONY: optimize-svg
optimize-svg:
ifdef svgo_installed
# https://github.com/svg/svgo/issues/872
	svgo --multipass --disable=mergePaths object-uml.svg
endif
