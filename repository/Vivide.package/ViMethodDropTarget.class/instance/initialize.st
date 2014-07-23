initialization
initialize

	super initialize.
	
	self
		color: Color white;
		dropColor: Color orange;
		acceptedDropAreas: #(full);
		acceptedDropBlock: [:passenger :type | #(objects artifact) includes: type];
		convertPassengerBlock: [:objects | (objects collect: [:obj |
			(obj isKindOf: MethodReference)
				ifTrue: [obj]
				ifFalse: [(obj isKindOf: CompiledMethod)
					ifTrue: [obj methodReference]
					ifFalse: []]]) reject: [:obj | obj isNil]].