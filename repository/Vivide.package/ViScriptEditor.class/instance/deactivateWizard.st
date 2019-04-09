actions - editing
deactivateWizard
	"Show actual source code but fall back if not present."
	
	self thisStep setProperty: #isNew toValue: nil.  
	
	"Remove the room for the magic wand. See #drawWizardIndicationOn:."
	self textField margins: (4@0 corner: 0@7).

	self setFullSourceCode.
	self setFullSourceCodeInterval. "Keep or reset."
	self setVisibleSourceCode.