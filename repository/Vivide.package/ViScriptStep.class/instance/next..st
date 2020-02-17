accessing
next: aStep

	next == aStep ifTrue: [^ self].
	
	next in: [:oldNext |
		next := aStep.
		self breakLocalCycle.
		
		self notifier
			step: self
			next: oldNext
			changedTo: self next].