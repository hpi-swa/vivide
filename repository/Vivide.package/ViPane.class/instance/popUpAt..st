initialization - pop-up
popUpAt: aPoint

	self flag: #badPlace. "mt: Move to initializer?"
	self eventHandler ifNil: [self eventHandler: UiEventHandler new].

	self
		extent: ((self optimalWidth @ self optimalHeight) min: (500@300));
		topLeft: aPoint;
		position: self position + (self bounds amountToTranslateWithin: ViActiveVivide world bounds).
	
	self eventHandler disconnectSignal: #focusLostInSubmorph: from: self selector: #onFocusLost.
	self connect: self eventHandler signal: #focusLostInSubmorph: toSelector: #onFocusLost.
	
	self openInWorld; updateColor; redrawLater.