accessing
next: aStep

	next == aStep ifTrue: [^ self].
	
	next in: [:oldNext |
		next := aStep.
		self breakLocalCycle.
		
		self notifier
			stepNextChanged: self
			from: oldNext to: next].