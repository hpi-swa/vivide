connections and tuples
tupleSizeDynamic
	"If there are no objects, ignore that input because the product-of-collections will not yield any results then."

	^ (self validInputConnections
		select: [:c | c objects notEmpty])
			ifEmpty: [self tupleSizeInput]
			ifNotEmpty: [:nonEmptyConnections | nonEmptyConnections size]