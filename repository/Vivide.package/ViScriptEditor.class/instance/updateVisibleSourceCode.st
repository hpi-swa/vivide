updating
updateVisibleSourceCode
	"Interpret current script pointer and update visible code."
	
	self visibleSourceCode: (self script
		copyFrom: self scriptPointer first
		to: self scriptPointer last).