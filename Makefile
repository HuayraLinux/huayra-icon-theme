all: huayra-violeta huayra-violeta-v2 huayra-mayo huayra-fresco-verde huayra-accesible huayra-limbo huayra-liso

huayra-violeta:
	bash ./scripts/iconator.sh huayra-violeta

huayra-violeta-v2:
	bash ./scripts/iconator.sh huayra-violeta-v2

huayra-mayo:
	bash ./scripts/iconator.sh huayra-mayo

huayra-fresco-verde:
	bash ./scripts/iconator.sh huayra-fresco-verde

huayra-accesible:
	bash ./scripts/iconator.sh huayra-accesible

huayra-limbo:
	bash ./scripts/iconator.sh huayra-limbo

huayra-liso:
	bash ./scripts/iconator.sh huayra-liso

clean: huayra-violeta.clean huayra-violeta-v2.clean huayra-mayo.clean huayra-fresco-verde.clean huayra-accesible.clean huayra-limbo.clean huayra-liso.clean

huayra-violeta.clean:
	bash ./scripts/clean.sh huayra-violeta

huayra-violeta-v2.clean:
	bash ./scripts/clean.sh huayra-violeta-v2

huayra-mayo.clean:
	bash ./scripts/clean.sh huayra-mayo

huayra-fresco-verde.clean:
	bash ./scripts/clean.sh huayra-fresco-verde

huayra-accesible.clean:
	bash ./scripts/clean.sh huayra-accesible

huayra-limbo.clean:
	bash ./scripts/clean.sh huayra-limbo

huayra-liso.clean:
	bash ./scripts/clean.sh huayra-liso
