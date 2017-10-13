tuples
tupleSizeDynamic
	"If there are no objects, ignore that input because the product-of-collections will not yield any results then."

	self connections ifEmpty: [^ self tupleSizeInput].
	^ self connections count: [:c | c target == self
		and: [c objects notEmpty]]