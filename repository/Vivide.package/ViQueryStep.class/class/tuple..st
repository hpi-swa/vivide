as yet unclassified
tuple: code
	"[:a :b | {a. b}]
	[:a | {a. a size}]
	[:obj | {obj. #text -> obj}]"

	^ ViQueryTupleStep new
		definition: (ViQueryMapDefinition new
			sourceCode: code;
			mapType: #each)