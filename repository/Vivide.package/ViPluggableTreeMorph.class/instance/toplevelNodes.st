as yet unclassified
toplevelNodes

	^ self model ifNil: [#()] ifNotNil: [:m | m nodes]