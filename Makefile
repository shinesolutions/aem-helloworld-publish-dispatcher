version ?= 0.9.2

package:
	rm -rf stage
	mkdir -p stage
	zip -r \
	    -x "*.DS_Store" \
	    -x "*stage*" \
	    -x "*.idea*" \
	    -x "*.git*" \
	    -X "stage/aem-helloworld-publish-dispatcher-$(version).zip" *

.PHONY: package
