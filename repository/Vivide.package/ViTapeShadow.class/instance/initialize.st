initialization
initialize

	super initialize.
	self
		addCloseBtn;
		orientation: #vertical;
		acceptedDropBlock: [:passenger :type | #(editorStates editor objects operation operations artifact tapeStates) includes: type];
		convertPassengerBlock: [:passenger :type :source |
			type == #editorStates
				ifTrue: [ViEditor newFromState: passenger first]
				ifFalse: [type == #editor ifTrue: [passenger] ifFalse: []]].