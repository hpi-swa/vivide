local cycles
breakLocalCycle
	"Break the cycle by discarding #next in the step that points to the repeated step."

	self cyclicStep ifNotNil: [:step | step next: nil].