actions - editing
activateWizard
	"Ignore current source code and propose simple mapping."

	shouldPropose := true.
	self script: (self inputKind
		ifEmpty: ['["Type code here..."]']
		ifNotEmpty: [:classes |
			'[{1}| "Type code here..."]' format: {
				classes inject: '' into: [:pattern :cls |
					pattern := pattern, ':', cls name withFirstCharacterDownshifted,' ']}]).
	self selectBlockStatements.