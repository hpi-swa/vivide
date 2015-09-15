as yet unclassified
toplevelNodes

	^ self model ifNil: [#()] ifNotNil: [:m | self childrenFor: m]