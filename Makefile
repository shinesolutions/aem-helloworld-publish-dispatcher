version ?= 0.11.1-pre.0

ci: clean lint package

clean:
	rm -rf stage

lint:
	puppet epp validate */*.epp

package: clean
	mkdir -p stage
	zip -r \
	    -x "*.DS_Store" \
	    -x "*stage*" \
	    -x "*.idea*" \
	    -x "*.git*" \
	    -X "stage/aem-helloworld-publish-dispatcher-$(version).zip" *

release:
	rtk release

.PHONY: ci clean lint package release
