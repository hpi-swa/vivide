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
				icon: connection class icon scaledToDisplay;
				layoutInset: 2;
				balloonText: (connection source currentQuery
					ifNil: ['(no query)']
					ifNotNil: [:q | q nextLabel]);
				setProperty: #paneIn toValue: connection source;
				addDropShadow;
				yourself).
			self connect: buttons last signal: #clicked: toSelector: #logDataflowChanged.
			self connect: buttons last signal: #clicked: to: connection selector: #detach.
			self connect: buttons last signal: #clicked: toSelector: #endInteraction].

	inBtn := UiToolButton new
		color: self fanInColor;
		autoRaise: false;
		buttonStyle: #iconOnly;
		icon: ViIcons icons8Login32pxIcon scaledToDisplay;
		balloonText: 'Explore input objects';
		layoutInset: 2;
		addDropShadow;
		yourself.
	self connect: inBtn signal: #clicked: to: self target selector: #browseObjects.
	self connect: inBtn signal: #clicked: toSelector: #delete.

	box := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 3;
		cellInset: (inBtn height // 2).
	box addAllMorphs: {inBtn}, buttons.

	box fullBounds.
	box center: (self basicBox left +15) @ ((self basicBox height // 2) + self basicBox top).
	self addMorph: box.