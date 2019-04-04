interpreting - private
next
	
	step ifNil: [self assert: stack isEmpty. ^ self].
	
	(step isExecutedAsynchronously and: [Project uiProcess == Processor activeProcess]) ifTrue: [
		ViAsyncError signal: 'This step must not be executed in the UI process.'].
	
	self interpretScript.
		
	[step isNil and: [stack isEmpty not]] whileTrue: [
		step := stack pop next].

	((step isNil and: [self hasObjects]) and: [self hasProperties not]) ifTrue: [
		step := #defaultProperties asScript.
		self assert: (step isNil or: [step isPropertyExtraction])].