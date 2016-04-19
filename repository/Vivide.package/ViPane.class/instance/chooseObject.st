initialization - pop-up
chooseObject
	"Modal loop."
	
	self
		chooseObjectAt: ActiveHand cursorPoint
		thenNotify: self
		with: #returnChoice:.
	
	[self isInWorld] whileTrue: [self world doOneSubCycle].
	
	[^ self valueOfProperty: #modalChoiceResult]
		ensure: [self removeProperty: #modalChoiceResult]