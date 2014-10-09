actions - navigation
selectAll

	edit selection size > 1
		ifTrue: [edit selectAll]
		ifFalse: [self selectBlockStatements].

	"Fall back."
	edit selection ifEmpty: [edit selectAll].