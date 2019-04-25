local cycles
convertLocalCycle
	"Replace cyclic step with script reference."

	self hasLocalCycle ifFalse: [^ self].

	self cycleStep in: [:cycleStep |
		cycleStep next in: [:nextStep |
			cycleStep next: nextStep asReference.
			cycleStep next
				unregister;
				organization: cycleStep organization;
				register]].