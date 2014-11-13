instance creation - OLD
groupBy: codeForGroupByBlock
	"[:obj | #all]."

	^ ViQueryGroupStep new
		definition: (ViQueryMapDefinition new
			sourceCode: codeForGroupByBlock;
			mapType: #each)