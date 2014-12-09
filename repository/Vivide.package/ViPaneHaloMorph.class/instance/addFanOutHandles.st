handles
addFanOutHandles

	| addBtn box buttons outBtn |
	buttons := OrderedCollection new.
	
	self target connections
		select: [:connection | connection isValid and: [connection source == self target]]
		thenDo: [:connection |
			buttons add: (UiToolButton new
				color: self fanOutColor;
				autoRaise: false;
				buttonStyle: #iconOnly;
				icon: connection class icon;
				layoutInset: 2;
				balloonText: (connection target currentQuery
					ifNil: ['(no query)']
					ifNotNil: [:q | q nextLabel]);
				setProperty: #paneOut toValue: connection target;   
				yourself).
			self connect: buttons last signal: #clicked: toSelector: #logDataflowChanged.
			self connect: buttons last signal: #clicked: to: connection selector: #detach.
			self connect: buttons last signal: #clicked: toSelector: #endInteraction].
	
	addBtn := UiToolButton new
		color: self fanOutColor;
		autoRaise: false;
		buttonStyle: #iconOnly;
		icon: (ViIcons plusSmallSunkenIcon clippedTo: 10@10);
		layoutInset: 2;
		yourself.

	addBtn eventHandler dragThreshold: 0.
	self connect: addBtn eventHandler signal: #mouseDragStarted: toSelector: #startConnect:with: pattern: {1.#=.addBtn}.
	self connect: addBtn eventHandler signal: #mouseMoved: toSelector: #doConnect:with: pattern: {1.#=.addBtn}.
	self connect: addBtn eventHandler signal: #mouseReleased: toSelector: #addConnection:with:  pattern: {1.#=.addBtn}.
	
	outBtn := UiToolButton new
		color: self fanOutColor;
		autoRaise: false;
		buttonStyle: #iconOnly;
		icon: (ViIcons controlRecordSmallSunkenIcon clippedTo: 10@10);
		layoutInset: 2;
		yourself.
	self connect: outBtn signal: #clicked: to: self target selector: #browseResults.
	self connect: outBtn signal: #clicked: toSelector: #delete.
	
	box := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 3.
	box addAllMorphs: {outBtn}, buttons, {addBtn}.

	box fullBounds.
	box center: (self basicBox right -15) @ ((self basicBox height // 2) + self basicBox top + (addBtn height // 2)).
	self addMorph: box.