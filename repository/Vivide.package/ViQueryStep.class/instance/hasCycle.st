testing
hasCycle

	self stepsDo: [:step | ] ifCyclic: [^ true].
	^ false