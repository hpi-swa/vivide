instance creation - OLD
groupSorted: codeForGroupSortBlock
	"[:o1 :o2 | o1 asString <= o2 asString]."
	
	^ ViQueryGroupSortStep new
		definition: (ViQueryMapDefinition new
			sourceCode: codeForGroupSortBlock;
			mapType: #twoArgs)