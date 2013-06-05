all: icons/huayra-violeta icons/huayra-violeta-v2 icons/huayra-mayo icons/huayra-fresco-verde icons/changelog icons/README

icons/huayra-violeta:
	bash ./scripts/icon-theme-generator.sh build "huayra-violeta" "icons"

icons/huayra-violeta-v2:
	bash ./scripts/icon-theme-generator.sh build "huayra-violeta-v2" "icons"

icons/huayra-mayo:
	bash ./scripts/icon-theme-generator.sh build "huayra-mayo" "icons"

icons/huayra-fresco-verde:
	bash ./scripts/icon-theme-generator.sh build "huayra-fresco-verde" "icons"

icons/changelog: debian/changelog
	cp -a debian/changelog icons/changelog

icons/README: debian/changelog
	cp -a README icons/README

clean:
	bash ./scripts/icon-theme-generator.sh clean "icons"
