mica_build_path=../mica/target/mica-1.1-SNAPSHOT
mica_extensions_path=$(mica_build_path)/sites/all/modules/mica/extensions


all: deploy

deploy: 
	cp -r ../mica_create_missing_menus $(mica_extensions_path) && \
	rm -rf `find $(mica_extensions_path)/mica_create_missing_menus -name ".*"` && \
	rm -rf `find $(mica_extensions_path)/mica_create_missing_menus -name Makefile`
