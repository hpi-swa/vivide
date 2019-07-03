accessing
next

	"Materialize referenced step identifiers lazily."
	next isSymbol ifTrue: [next in: [:nextStepId |
		self setNext: (self organization stepById: nextStepId).
		next ifNil: [Transcript showln: ('[Vivide ERROR] Could not resolve next step {1} for step {2}!' format: {nextStepId. self id}) ]]].
		
	^ next