as yet unclassified
isTransformationSelector: aSelector

	^ #(collect: select: gather: reject: reduce: inject: asGroups sort: sorted: sorted)
			anySatisfy: [:verb | aSelector beginsWith: verb]