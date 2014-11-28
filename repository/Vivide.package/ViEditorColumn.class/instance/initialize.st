initialization
initialize

	super initialize.
	
	self
		vResizing: #spaceFill;
		layoutPolicy: ViVerticalLayout new;
		acceptedDropAreas: #(left right between);
		convertPassengerBlock: [:passenger :type :source |
			type == #editorStates
				ifTrue: [ViEditor newFromState: passenger first]
				ifFalse: [type == #editor ifTrue: [passenger] ifFalse: []]];
		acceptedDropBlock: [:passenger :type | #(editorStates editor objects operation operations artifact) includes: type].