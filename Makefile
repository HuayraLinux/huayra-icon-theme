all: icons/huayra icons/huayra-mayo icons/huayra-fresco-verde icons/changelog icons/README

icons/huayra:
	bash ./scripts/icon-theme-generator.sh build "huayra" "icons"

#icons/huayra-alternativo:
#	bash ./scripts/icon-theme-generator.sh build "huayra-alternativo" "icons"

icons/huayra-mayo:
	bash ./scripts/icon-theme-generator.sh build "huayra-mayo" "icons"

icons/huayra-fresco-verde:
	bash ./scripts/icon-theme-generator.sh build "huayra-fresco-verde" "icons"

#icons/huayra-apps:
#	bash ./scripts/icon-theme-generator.sh build "huayra-apps" "icons"

icons/changelog: debian/changelog
	cp -a debian/changelog icons/changelog

icons/README: debian/changelog
	cp -a README icons/README

clean:
	bash ./scripts/icon-theme-generator.sh clean "icons"
