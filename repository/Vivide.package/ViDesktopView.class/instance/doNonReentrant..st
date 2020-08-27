as yet unclassified
doNonReentrant: workBlock
	"Ignore the given workBlock if somebody is already in here."
	
	self isDoingNonReentrantWork ifTrue: [^ self].
		
	[
		self setProperty: #isReadingModel toValue: true.
		workBlock value.
	] ensure: [self removeProperty: #isReadingModel].