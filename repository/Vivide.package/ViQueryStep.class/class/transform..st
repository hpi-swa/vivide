instance creation - OLD
transform: codeForMapBlock
	"[:objects | objects]."

	^ ViQueryTransformStep new
		definition: (ViQueryMapDefinition new
			sourceCode: codeForMapBlock;
			mapType: #all)