version ?= 0.10.2

ci: clean tools lint package

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

tools:
	gem install puppet

.PHONY: ci clean lint package tools
