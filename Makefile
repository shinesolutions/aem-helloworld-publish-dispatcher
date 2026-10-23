version ?= 1.0.0

ci: clean lint package

clean:
	rm -rf stage

lint:
	puppet epp validate */*.epp
	markdownlint-cli2 README.md .github/ISSUE_TEMPLATE/*.md
	yamllint .*.yaml .github/workflows/*.yaml
	jsonlint .rtk.json

package: clean
	mkdir -p stage
	zip -r \
	    -x "*.DS_Store" \
	    -x "*stage*" \
	    -x "*.idea*" \
	    -x "*.git*" \
	    -X "stage/aem-helloworld-publish-dispatcher-$(version).zip" *

publish:
	gh release create $(version) --title $(version) --notes "" || echo "Release $(version) has been created on GitHub"
	gh release upload $(version) stage/aem-helloworld-publish-dispatcher-$(version).zip

release-major:
	rtk release --release-increment-type major

release-minor:
	rtk release --release-increment-type minor

release-patch:
	rtk release --release-increment-type patch

release: release-minor

.PHONY: ci clean lint package publish release release-major release-minor release-patch
