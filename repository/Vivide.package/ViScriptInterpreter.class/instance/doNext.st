interpreting
doNext
	"Interpret the next script step using objects as input."
	
	self next ifNil: [self assert: stack isEmpty. ^ self].
	
	(step isExecutedAsynchronously and: [Project uiProcess == Processor activeProcess]) ifTrue: [
		ViAsyncError signal: 'This step must not be executed in the UI process.'].
	
	self bind: #thisScript to: self first.
	self bind: #thisStep to: self next.
	
	self withBindingsDo: [
		
		self interpretScript.
		
		[step isNil and: [stack isEmpty not]] whileTrue: [
			step := stack pop next].

		((self atEnd and: [self hasObjects]) and: [self hasProperties not]) ifTrue: [
			self next: #defaultProperties asScript.
			
			self atEnd
				ifTrue: [self simulatePropertyExtraction]
				ifFalse: [self assert: self next isPropertyExtraction]]. ].