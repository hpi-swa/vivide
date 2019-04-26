local cycles
convertLocalCycle
	"Replace cyclic step with script reference."

	self hasLocalCycle ifFalse: [^ self].

	self cyclicStep in: [:step |
		step next in: [:nextStep |
			step next: nextStep asReference.
			step next
				unregister;
				organization: step organization;
				register]].