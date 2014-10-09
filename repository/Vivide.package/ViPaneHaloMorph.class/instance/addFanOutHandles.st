handles
addFanOutHandles

	| addBtn box buttons |
	buttons := self listeningPanesForSelections collect: [:p |
		UiToolButton new
			color: self fanOutColor;
			autoRaise: false;
			buttonStyle: #iconOnly;
			icon: UiDiagonaIcons icon0331Small asWireframeSunken;
			layoutInset: 2;
			balloonText: (p currentQuery
				ifNil: '(no query)'
				ifNotNil: [:q | q nextLabel]);
			setProperty: #paneOut toValue: p;
			yourself].
	buttons := buttons, (self listeningPanesForResults collect: [:p |
		UiToolButton new
			color: self fanOutColor;
			autoRaise: false;
			buttonStyle: #iconOnly;
			icon: UiDiagonaIcons icon0335Small asWireframeSunken;
			layoutInset: 2;
			balloonText: (p currentQuery
				ifNil: '(no query)'
				ifNotNil: [:q | q nextLabel]);
			setProperty: #paneOut toValue: p;
			yourself]).
	buttons do: [:btn |
		self connect: btn signal: #clicked: toSelector: #removeListenerFrom: pattern: #(0)].
	
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
	
	box := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 3.
	box addAllMorphs: buttons, {addBtn}.

	box fullBounds.
	box center: (self basicBox right -15) @ ((self basicBox height // 2) + self basicBox top + (addBtn height // 2)).
	self addMorph: box.