instance creation
property: codeForPropertyBlock
	"[:obj | #text -> obj asString]."

	^ ViQueryPropertyStep new
		definition: (ViQueryMapDefinition new
			sourceCode: codeForPropertyBlock;
			mapType: #each)