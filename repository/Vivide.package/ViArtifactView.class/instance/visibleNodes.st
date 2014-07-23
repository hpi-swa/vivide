as yet unclassified
visibleNodes

	^ self model ifNil: [#()] ifNotNil: [:model | model childrenAllGroups]