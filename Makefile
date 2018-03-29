version ?= 0.10.2

ci: clean package

clean:
	rm -rf stage

package: clean
	mkdir -p stage
	zip -r \
	    -x "*.DS_Store" \
	    -x "*stage*" \
	    -x "*.idea*" \
	    -x "*.git*" \
	    -X "stage/aem-helloworld-publish-dispatcher-$(version).zip" *

.PHONY: ci clean package
