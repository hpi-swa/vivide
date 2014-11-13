actions - editing
activateWizard
	"Ignore current source code and propose simple mapping."

	shouldPropose := true.
	self updateInputKind.
	self script: (self inputKind
		ifEmpty: ['["Type code here..."]']
		ifNotEmpty: ['[{1}| "Type code here..."]'
			format: {self generateBlockVarDeclaration}]).
	self mapIndex: 1.
	self selectBlockStatements.