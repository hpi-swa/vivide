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
				icon: connection class icon scaledToDisplay;
				layoutInset: 2;
				balloonText: (connection target currentQuery
					ifNil: ['(no query)']
					ifNotNil: [:q | q nextLabel]);
				setProperty: #paneOut toValue: connection target;
				addDropShadow;
				yourself).
			self connect: buttons last signal: #clicked: toSelector: #logDataflowChanged.
			self connect: buttons last signal: #clicked: to: connection selector: #detach.
			self connect: buttons last signal: #clicked: toSelector: #endInteraction].
	
	addBtn := UiToolButton new
		color: self fanOutColor;
		autoRaise: false;
		buttonStyle: #iconOnly;
		icon: ViIcons icons8Add32pxIcon scaledToDisplay;
		balloonText: 'Drag and drop to add a new connection.';
		layoutInset: 2;
		addDropShadow;
		yourself.

	addBtn eventHandler dragThreshold: 0.
	self connect: addBtn eventHandler signal: #mouseDragStarted: toSelector: #startConnect:with: pattern: {1.#=.addBtn}.
	self connect: addBtn eventHandler signal: #mouseMoved: toSelector: #doConnect:with: pattern: {1.#=.addBtn}.
	self connect: addBtn eventHandler signal: #mouseReleased: toSelector: #addConnection:with:  pattern: {1.#=.addBtn}.
	
	outBtn := UiToolButton new
		color: self fanOutColor;
		autoRaise: false;
		buttonStyle: #iconOnly;
		icon: ViIcons icons8SignOut32pxIcon scaledToDisplay;
		balloonText: 'Explore output objects';
		layoutInset: 2;
		addDropShadow;
		yourself.
	self connect: outBtn signal: #clicked: to: self target selector: #browseResults.
	self connect: outBtn signal: #clicked: toSelector: #delete.
	
	box := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 3;
		cellInset: (outBtn height // 2).
	box addAllMorphs: {outBtn}, buttons, {addBtn}.

	box fullBounds.
	box center: (self basicBox right -15) @ ((self basicBox height // 2) + self basicBox top + (addBtn height // 2)).
	self addMorph: box.