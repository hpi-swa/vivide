as yet unclassified
addFanInHandles

	| box buttons |
	buttons := self listenToPanesForSelections collect: [:p |
		UiToolButton new
			color: self fanInColor;
			autoRaise: false;
			buttonStyle: #iconOnly;
			icon: UiDiagonaIcons icon0331Small asWireframeSunken;
			layoutInset: 2;
			balloonText: (p currentQuery
				ifNil: '(no query)'
				ifNotNil: [:q | q nextLabel]);
			setProperty: #paneIn toValue: p;
			yourself].
	buttons := buttons, (self listenToPanesForResults collect: [:p |
		UiToolButton new
			color: self fanInColor;
			autoRaise: false;
			buttonStyle: #iconOnly;
			icon: UiDiagonaIcons icon0335Small asWireframeSunken;
			layoutInset: 2;
			balloonText: (p currentQuery
				ifNil: '(no query)'
				ifNotNil: [:q | q nextLabel]);
			setProperty: #paneIn toValue: p;
			yourself]).
	buttons do: [:btn |
		self connect: btn signal: #clicked: toSelector: #removeProviderFrom: pattern: #(0)].
	
	box := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 3.
	box addAllMorphs: buttons.

	box fullBounds.
	box center: (self basicBox left +15) @ ((self basicBox height // 2) + self basicBox top).
	self addMorph: box.