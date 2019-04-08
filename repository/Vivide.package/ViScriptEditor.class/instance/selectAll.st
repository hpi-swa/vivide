actions - navigation
selectAll

	self textField selection size > 1
		ifTrue: [self textField selectAll]
		ifFalse: [self selectBlockStatements].

	"Fall back."
	self textField selection ifEmpty: [self textField selectAll].