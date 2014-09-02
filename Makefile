.PHONY: publish-patch test

test:
	npm test

publish-patch: test
	npm version patch -m "Bump version"
	git push origin master --tags
	npm publish
