instance creation - OLD
sorted: codeForSortBlock
	"[:o1 :o2 | o1 asString <= o2 asString]."
	
	^ ViQueryTransformStep new
		definition: (ViQueryMapDefinition new
			sourceCode: ('[:objects :context | objects sorted: {1}].' format: {codeForSortBlock});
			mapType: #all)