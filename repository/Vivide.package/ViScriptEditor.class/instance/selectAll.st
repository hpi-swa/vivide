as yet unclassified
selectAll

	edit selection size > 1
		ifTrue: [edit selectAll]
		ifFalse: [self selectBlockStatements].