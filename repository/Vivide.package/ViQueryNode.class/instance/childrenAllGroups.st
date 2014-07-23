as yet unclassified
childrenAllGroups

	^ self children
		ifNil: [#()]
		ifNotNil: [:groups | groups values gather: [:group | group]]