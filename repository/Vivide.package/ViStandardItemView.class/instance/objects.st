accessing
objects
	"Input. Read-only for query commands."

	^ self queryModel
		ifNil: [#()]
		ifNotNil: [:m | m inputForChildren]