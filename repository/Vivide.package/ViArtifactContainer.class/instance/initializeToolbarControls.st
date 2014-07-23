toolbar - initialization
initializeToolbarControls
	"General controls for expand, collapse, drag, close."
	
	{{#top. #moveBtn. ViIcons controlRecordSmallSunkenIcon. 'Move method editor'. #yourself. ViDraggableButton}.
		{#top. nil. ViIcons control090SmallSunkenIcon. 'Collapse method editor'. #collapse. UiToolButton}.
		{#top. nil. ViIcons crossSmallSunkenIcon. 'Close method editor (CMD+W)'. #tryClose. UiToolButton}.
	} do: [:action |
		| button |
		button := action sixth new
			autoRaise: true;
			color: Color white;  
			buttonStyle: #iconOnly;
			icon: action third;
			balloonText: action fourth;
			layoutInset: (-1@0 corner: -1@0).
		
		self connect: button signal: #clicked: toSelector: action fifth.
		self toolbar addButton: button edge: action first.
		action second ifNotNil: [:iname | self setProperty: iname toValue: button]].

	(self valueOfProperty: #moveBtn)
		passenger: self;
		dragTransferType: #artifact.

	self
		connect: (self valueOfProperty: #moveBtn) eventHandler
		signal: #mouseDragStarted: toSelector: #hideToolbar.