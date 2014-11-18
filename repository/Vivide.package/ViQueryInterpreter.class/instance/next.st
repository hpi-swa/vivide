interpreting - private
next
	
	step ifNil: [self assert: stack isEmpty. ^ self].
	
	(step isExecutedAsynchronously and: [Project uiProcess == Processor activeProcess]) ifTrue: [
		ViAsyncError signal: 'This step must not be executed in the UI process.'].
	
	"--- 1) Interpret current step ---"

	step isGroupStep ifTrue: [self interpretGroupStep].
	step isTransformStep ifTrue: [self interpretTransformStep].
	step isScript
		ifTrue: [self interpretScript]
		ifFalse: [step isPropertyStep ifTrue: [self interpretPropertyStep]].

	"--- 2) Choose next step ---"

	step isReferenceStep
		ifTrue: [self interpretReferenceStep]
		ifFalse: [step := step next].
		
	[step isNil and: [stack isEmpty not]] whileTrue: [
		step := stack pop next].

	((step isNil and: [self hasObjects]) and: [self hasProperties not]) ifTrue: [
		step := ViQueryStep defaultProperties.
		self assert: step isPropertyStep].