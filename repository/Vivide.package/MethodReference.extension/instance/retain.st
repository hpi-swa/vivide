*vivide
retain
	"Avoid holding on to deleted methods."
	self isValid ifTrue: [
		(VivideLight historyFor: #methods)
			addObject: self].