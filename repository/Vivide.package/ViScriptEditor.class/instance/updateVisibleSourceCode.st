updating
updateVisibleSourceCode
	"Interpret current script pointer and update visible code."
	
	edit theText: (self script
		copyFrom: self scriptPointer first
		to: self scriptPointer last).