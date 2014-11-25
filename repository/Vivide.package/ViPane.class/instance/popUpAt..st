initialization - pop-up
popUpAt: aPoint

	self flag: #badPlace. "mt: Move to initializer?"
	self eventHandler ifNil: [self eventHandler: UiEventHandler new].

	self
		color: (Color gray: 0.85);
"		borderWidth: 1;
		borderColor: (Color gray: 0.8) muchDarker;"
		extent: (300@200 max: self extent);
		topLeft: aPoint;
"		layoutInset: 3;"
		position: self position + (self bounds amountToTranslateWithin: ViActiveVivide world bounds).
	
	self eventHandler disconnectSignal: #mouseLeft: from: self selector: #delete.
	self connect: self eventHandler signal: #mouseLeft: toSelector: #delete.
	self eventHandler disconnectSignal: #mouseLeftDragging: from: self selector: #delete.
	self connect: self eventHandler signal: #mouseLeftDragging: toSelector: #delete.
		
	self openInWorld; redrawLater.