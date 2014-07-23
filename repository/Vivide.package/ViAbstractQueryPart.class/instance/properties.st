accessing
properties
	"Store meta-data for a query part, e.g. creation time, modification time, author."
	
	^ properties ifNil: [properties := Dictionary new]