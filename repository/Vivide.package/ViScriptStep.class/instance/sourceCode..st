accessing - convenience
sourceCode: aString

	self sourceCode = aString ifTrue: [^ self].
	
	self sourceCode in: [:oldSourceCode |
		self definition sourceCode: aString.

		self notifier
			step: self
			sourceCode: oldSourceCode
			changedTo: self sourceCode]