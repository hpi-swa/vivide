interpreting - private
interpretReferenceStep

	self assert: step isReferenceStep.
	stack push: step.
	step := step reference.