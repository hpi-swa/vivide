local cycles
cycleStep
	"Return the step that initiates the cycle. If you call #next on the result, you will get the repeated step."
	
	| lastStep |
	self stepsDo: [:step | lastStep := step] ifCyclic: [^ lastStep].
	^ nil