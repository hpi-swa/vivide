pop-up chooser
popUpAt: aPoint

	self flag: #badPlace. "mt: Move to initializer?"
	self eventHandler ifNil: [self eventHandler: UiEventHandler new].

	self
		borderWidth: 1;
		borderColor: (Color gray: 0.8) muchDarker;
		extent: (300@200 max: self extent);
		topLeft: aPoint.
	
	self eventHandler disconnectSignal: #mouseLeft: from: self selector: #delete.
	self connect: self eventHandler signal: #mouseLeft: toSelector: #delete.
	self eventHandler disconnectSignal: #mouseLeftDragging: from: self selector: #delete.
	self connect: self eventHandler signal: #mouseLeftDragging: toSelector: #delete.
		
	self openInWorld; redrawLater.