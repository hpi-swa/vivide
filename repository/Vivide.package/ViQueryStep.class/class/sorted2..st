instance creation - OLD
sorted2: codeForSortBlock
	"[:o1 :o2 | o1 asString <= o2 asString]."
	
	^ ViQuerySortStep new
		definition: (ViQueryMapDefinition new
			sourceCode: codeForSortBlock;
			mapType: #twoArgs)