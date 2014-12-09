handles
addFanInHandles

	| inBtn box buttons |
	buttons := OrderedCollection new.
	
	self target connections
		select: [:connection | connection isValid and: [connection target == self target]]
		thenDo: [:connection |
			buttons add: (UiToolButton new
				color: self fanInColor;
				autoRaise: false;
				buttonStyle: #iconOnly;
				icon: connection class icon;
				layoutInset: 2;
				balloonText: (connection source currentQuery
					ifNil: ['(no query)']
					ifNotNil: [:q | q nextLabel]);
				setProperty: #paneIn toValue: connection source;   
				yourself).
			self connect: buttons last signal: #clicked: toSelector: #logDataflowChanged.
			self connect: buttons last signal: #clicked: to: connection selector: #detach.
			self connect: buttons last signal: #clicked: toSelector: #endInteraction].

	inBtn := UiToolButton new
		color: self fanInColor;
		autoRaise: false;
		buttonStyle: #iconOnly;
		icon: (ViIcons controlRecordSmallSunkenIcon clippedTo: 10@10);
		layoutInset: 2;
		yourself.
	self connect: inBtn signal: #clicked: to: self target selector: #browseObjects.
	self connect: inBtn signal: #clicked: toSelector: #delete.

	box := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 3.
	box addAllMorphs: {inBtn}, buttons.

	box fullBounds.
	box center: (self basicBox left +15) @ ((self basicBox height // 2) + self basicBox top).
	self addMorph: box.