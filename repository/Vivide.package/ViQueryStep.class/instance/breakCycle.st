as yet unclassified
breakCycle
	"Replace cyclic step with reference."

	self hasCycle ifFalse: [^ self].

	self assert: self isScript not. "There should be no cycles in new-style scripts."

	self cycleStep in: [:cycleStep |
		cycleStep next in: [:nextStep |
			cycleStep next: nextStep asReference.
			cycleStep next
				unregister;
				organization: cycleStep organization;
				register]].