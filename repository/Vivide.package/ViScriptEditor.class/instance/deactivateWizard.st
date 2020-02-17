actions - editing
deactivateWizard
	"Show actual source code but fall back if not present."
	
	| seeProps seeCode |
	self thisStep setProperty: #isNew toValue: nil.  
	
	"Remove the room for the magic wand. See #drawWizardIndicationOn:."
	self textField margins: (4@0 corner: 0@7).

	seeProps := self areScriptPropertiesVisible.
	seeCode := self isScriptSourceCodeVisible.
	
	self setFullSourceCode.

	seeProps	
		ifFalse: [ "Keep or reset to deepest block."
			self setFullSourceCodeInterval.]
		ifTrue: [ "Keep all code visible."
			self fullSourceCodeInterval: (1 to: self fullSourceCode size)].

	seeCode ifTrue: [self goUpToTop; goDown].
	
	self setVisibleSourceCode.