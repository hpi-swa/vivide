actions - editing
activateWizard
	"Ignore current source code and propose simple mapping."

	"Make room for the magic wand. See #drawWizardIndicationOn:."
	self textField margins: ((14 * RealEstateAgent scaleFactor) rounded @0 corner: 0@7).

	"Propose a starting point for the user."
	self fullSourceCode: nil.
	self setFullSourceCodeInterval.
	self visibleSourceCode: (self inputKind
		ifEmpty: [
			'["Type code here..."]']
		ifNotEmpty: [:someClasses |
			'[{1}| "Type code here..."]' format: {
				self class generateBlockVarDeclarationFor: someClasses}]).

	"If the user starts typing, any 'type code here' information should be removed."
	self selectBlockStatements.