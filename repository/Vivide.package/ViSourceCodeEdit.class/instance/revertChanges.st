actions
revertChanges

	self readOnly
		ifTrue: [^ self].
		
	self hasUnacceptedChanges
		ifFalse: [^ self].
		
	super revertChanges.
	
	"Play done animation."
	ViAnimatedImageMorph
		flyOutOn: self
		with: UiFugueIcons crossIcon.