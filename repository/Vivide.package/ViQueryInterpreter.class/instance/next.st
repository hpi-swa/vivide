interpreting - private
next
	
	step ifNil: [self assert: stack isEmpty. ^ self].
	
	"--- 1) Interpret current step ---"

	step isGroupStep ifTrue: [self interpretGroupStep].
	step isTransformStep ifTrue: [self interpretTransformStep].
	step isPropertyStep ifTrue: [self interpretPropertyStep].
	
	"--- X) Experimental ---"
	step isTupleStep ifTrue: [self interpretTupleStep].
	step isNestStep ifTrue: [self interpretNestStep].

	"--- 2) Choose next step ---"

	step isReferenceStep
		ifTrue: [self interpretReferenceStep]
		ifFalse: [step := step next].
		
	[step isNil and: [stack isEmpty not]] whileTrue: [
		step := stack pop next].

	(step isNil and: [numProperties = 0]) ifTrue: [
		step := ViQueryStep defaultProperties.
		self assert: step isPropertyStep].