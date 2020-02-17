handles
addFanOutHandles

	| addBtn box buttons outBtn |
	
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
	
	buttons := outputConnections values collect: #second.
	
	box := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 3;
		cellGap: (outBtn height // 2).
	box addAllMorphs: {outBtn}, buttons, {addBtn}.

	box fullBounds.
	box center: (self basicBox right -15) @ ((self basicBox height // 2) + self basicBox top + (addBtn height // 2)).
	
	self addAllMorphs: (outputConnections values collect: #first).
	self addMorph: box.