as yet unclassified
initialize

	super initialize.
	self color: (Color black alpha: 0.6).
	
	self eventHandler: UiEventHandler new.
	self eventHandler on: Character escape send: #delete to: self.
	
	"self eventHandler on: Character enter send: #activateWindow to: self.
	self eventHandler on: Character linefeed send: #activateWindow to: self."
	self eventHandler on: Character cr send: #activateWindow to: self.

	self eventHandler on: Character arrowRight send: #selectNextWindow to: self.
	self eventHandler on: Character arrowLeft send: #selectPreviousWindow to: self.

	self eventHandler on: $x send: #closeWindow to: self.
	self eventHandler on: Character delete send: #closeWindow to: self.
	self eventHandler on: Character backspace send: #closeWindow to: self.	

	self connect: self eventHandler signal: #mousePressed: toSelector: #delete.
	
	self
		changeTableLayout;
		layoutInset: 50;
		cellInset: 15@35;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		cellPositioning: #topCenter.

	self initializeSelectionRectangle.
	self initializeThumbnails.