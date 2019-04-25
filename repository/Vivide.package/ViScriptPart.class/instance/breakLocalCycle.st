local cycles
breakLocalCycle
	"Break the cycle by discarding #next in the step that points to the repeated step."

	self cycleStep ifNotNil: [:step | step next: nil].