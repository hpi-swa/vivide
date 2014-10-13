actions - editing
activateWizard
	"Ignore current source code and propose simple mapping."

	| classCount |
	classCount := Dictionary new.
	shouldPropose := true.
	self script: (self inputKind
		ifEmpty: ['["Type code here..."]']
		ifNotEmpty: [:classes |
			'[{1}| "Type code here..."]' format: {
				classes inject: '' into: [:pattern :cls | | count |
					count := classCount at: cls put: (classCount at: cls ifAbsent: [0]) + 1.
					pattern := pattern, ':', cls name withFirstCharacterDownshifted, (count > 1 ifFalse: [''] ifTrue: [count asString]),' ']}]).
	self selectBlockStatements.