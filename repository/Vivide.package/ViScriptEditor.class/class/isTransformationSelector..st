as yet unclassified
isTransformationSelector: aSelector

	^ #(collect: select: gather: reject: reduce: inject: asGroups sort: sorted reversed first last detect:)
			anySatisfy: [:verb | aSelector beginsWith: verb]