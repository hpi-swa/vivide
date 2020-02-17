local cycles
hasLocalCycle

	self stepsDo: [:step | ] ifCyclic: [^ true].
	^ false