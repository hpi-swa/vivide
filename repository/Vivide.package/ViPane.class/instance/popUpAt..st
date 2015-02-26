initialization - pop-up
popUpAt: aPoint

	self flag: #badPlace. "mt: Move to initializer?"
	self eventHandler ifNil: [self eventHandler: UiEventHandler new].

	self
		color: (Color gray: 0.85);
"		borderWidth: 1;
		borderColor: (Color gray: 0.8) muchDarker;"
		extent: ((self optimalWidth @ self optimalHeight) min: (500@300));
		topLeft: aPoint;
"		layoutInset: 3;"
		position: self position + (self bounds amountToTranslateWithin: ViActiveVivide world bounds).
	
	self eventHandler disconnectSignal: #focusLostInSubmorph: from: self selector: #onFocusLost.
	self connect: self eventHandler signal: #focusLostInSubmorph: toSelector: #onFocusLost.
	
	self openInWorld; redrawLater.