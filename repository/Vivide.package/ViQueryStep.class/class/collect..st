instance creation
collect: codeForCollectBlock
	"[:obj | obj class]."

	^ ViQueryTransformStep new
		definition: (ViQueryMapDefinition new
			sourceCode: codeForCollectBlock;
			mapType: #each)