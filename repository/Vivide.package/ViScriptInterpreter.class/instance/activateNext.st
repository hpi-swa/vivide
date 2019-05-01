interpreting
activateNext

	self assert: self atEnd.

	[self stack isEmpty not] whileTrue: [
		self stack top atEnd
			ifTrue: [
				"One step finished. Try its next step if any."
				self stack pop thisStep next ifNotNil: [:nextStep |
					self stack push: nextStep activate]]
			ifFalse: [
				self stack top nextActivation ifNotNil: [:activation |
					self stack top == activation
						ifFalse: [
							"Still looking for the next step."
							self stack push: activation]
						ifTrue: [
							"We found the next step."
							self next: self stack top thisStep.
							^ self ]]]].
	
	self assert: self atEnd.
	self assert: self stack isEmpty.
	
	(self hasObjects and: [self hasProperties not]) ifTrue: [
		"Use default property extraction"	
		#defaultProperties asScript
			ifNil: [self simulatePropertyExtraction]
			ifNotNil: [:defaultScript |
				self stack push: defaultScript activate.
				self activateNext.
				self assert: self next isPropertyExtraction]].