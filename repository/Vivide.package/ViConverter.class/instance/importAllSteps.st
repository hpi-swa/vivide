convert
importAllSteps

	| steps |
	steps := OrderedCollection new.
	
	self readSteps do: [:dict | steps add: (self importStep: dict)].
	
	"Resolve ids."
	steps do: [:step | step next; definition].