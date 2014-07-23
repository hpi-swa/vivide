accessing
next: aStep

	next == aStep ifTrue: [^ self].
	
	self flag: #endlessLoop. "mt: What about larger cycles?!"
	aStep == self ifTrue: [^ self next: nil].

	next in: [:oldNext |
		next:= aStep.

		self notifier
			stepNextChanged: self
			from: oldNext to: next].