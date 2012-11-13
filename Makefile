all: icons/huayra icons/huayra-alternativo icons/changelog icons/README

icons/huayra:
	bash ./scripts/icon-theme-generator.sh build "huayra" "icons"

icons/huayra-alternativo:
	bash ./scripts/icon-theme-generator.sh build "huayra-alternativo" "icons"

icons/changelog: debian/changelog
	cp -a debian/changelog icons/changelog

icons/README: debian/changelog
	cp -a README icons/README

clean:
	bash ./scripts/icon-theme-generator.sh clean "icons"