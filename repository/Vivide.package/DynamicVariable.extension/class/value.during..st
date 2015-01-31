*vivide-override-accessing
value: anObject during: aBlock

	| p oldValue defaultUsed |
	p := Processor activeProcess.
	defaultUsed := false.
	oldValue := p environmentAt: self ifAbsent: [defaultUsed := true. nil].
	^[
		p environmentAt: self put: anObject.
		aBlock value ] 
			ensure: [ defaultUsed
					ifTrue: [p environmentRemoveKey: self]
					ifFalse: [p environmentAt: self put: oldValue] ].