convert
importAllSteps

	| steps |
	steps := OrderedCollection new.
	
	self readSteps do: [:dict | steps add: (self mergeStep: dict)].
	
	"Resolve ids."
	steps do: [:step | step next; definition].