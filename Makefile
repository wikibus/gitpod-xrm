.PHONY: sql convert install_ontop pipeline

install_ontop:
	cd ontop-scripts && ./install.sh

convert:
	cd ontop-scripts && ./convert.sh

pipeline:
	cd pipeline && npm run pipeline-file
