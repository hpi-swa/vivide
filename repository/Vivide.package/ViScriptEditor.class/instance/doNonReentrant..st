updating - guards
doNonReentrant: workBlock
	"Ignore the given workBlock if somebody is already in here."
	
	self isDoingNonReentrantWork ifTrue: [^ self].
		
	[
		self setProperty: #isUpdating toValue: true.
		workBlock value.
	] ensure: [self removeProperty: #isUpdating].