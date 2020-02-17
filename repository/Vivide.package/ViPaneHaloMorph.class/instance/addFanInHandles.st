handles
addFanInHandles

	| inBtn box buttons |
	buttons := OrderedCollection new.
	
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

	buttons := inputConnections values collect: #second.

	box := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 3;
		cellGap: (inBtn height // 2).
	box addAllMorphs: {inBtn}, buttons.

	box fullBounds.
	box center: (self basicBox left +15) @ ((self basicBox height // 2) + self basicBox top).

	self addAllMorphs: (inputConnections values collect: #first).
	self addMorph: box.