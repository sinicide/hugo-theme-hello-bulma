bulma-update:
	rm -rf "./.tmp"
	mkdir -p "./.tmp"
	curl -sL https://github.com/jgthms/bulma/releases/download/$$BULMA_VERSION/bulma-$$BULMA_VERSION.zip -o ./.tmp/bulma-$$BULMA_VERSION.zip
	unzip -d ./assets/scss/ ./.tmp/bulma-$$BULMA_VERSION.zip 
clean:
	rm -rf "./.tmp"
	rm -rf "assets/scss/bulma/css"
	rm -f "assets/scss/bulma/bulma.sass"
	rm -f "assets/scss/bulma/LICENSE"
	rm -f "assets/scss/bulma/package.json"
	rm -f "assets/scss/bulma/README.md"
prism-update:
	rm -rf "./.tmp"
	mkdir -p "./.tmp"
	curl -sL https://prismjs.com/download.html#themes=prism-tomorrow&languages=markup+css+clike+javascript+bash+go+java+json+markup-templating+powershell+python+yaml&plugins=line-numbers+show-language+toolbar+copy-to-clipboard -o ./.tmp/prism.js
fontawesome-update:
	rm -rf "./.tmp"
	mkdir -p "./.tmp"
	curl -sL https://use.fontawesome.com/releases/v$$FONT_AWESOME_VERSION/fontawesome-free-$$FONT_AWESOME_VERSION-web.zip -o ./.tmp/fontawesome-free-$$FONT_AWESOME_VERSION-web.zip
	unzip -d ./.tmp ./.tmp/fontawesome-free-$$FONT_AWESOME_VERSION-web.zip
	mkdir -p "static/fonts"
	cp ./.tmp/fontawesome-free-$$FONT_AWESOME_VERSION-web/webfonts/* static/fonts
	mkdir -p "assets/scss/fontawesome"
	cp ./.tmp/fontawesome-free-$$FONT_AWESOME_VERSION-web/scss/* assets/scss/fontawesome
	sed -i 's/..\/webfonts/..\/..\/fonts/' assets/scss/fontawesome/_variables.scss