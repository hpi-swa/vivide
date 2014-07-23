initialization
initialize

	super initialize.
	
	self
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutPolicy: ViTapeContainerLayout new.
		
	self
		color: (Color gray: 0.3);
		background: Vivide background1;
		footer: ('<font color="#888888">', Vivide appVersion versionString, '</font>') asHtmlText.

	self
		dropColor: (Color gray: 0.7);
		acceptedDropAreas: #(left right);
		acceptedDropBlock: [:object | (object isKindOf: ViEditor) or: [object isBehavior]];
		convertPassengerBlock: [:object | object isBehavior ifTrue: [object new] ifFalse: [object]].