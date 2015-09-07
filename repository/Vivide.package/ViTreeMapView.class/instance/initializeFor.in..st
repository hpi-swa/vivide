initialization
initializeFor: aScript in: anEnvironment

	| buttonBar |
	self setProperty: #viewId toValue: self class defaultViewId.     
	self connect: self signal: #selectionChanged: to: anEnvironment selector: #notifyChangedSelection:.

	self
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellInset: 2;
		addMorphBack: (UiScrollArea new
			hResizing: #spaceFill;
			vResizing: #spaceFill;
			widget: (Morph new
				color: (Color gray: 0.85);
				borderWidth: 0;
				layoutFrame: (LayoutFrame fractions: (
					0@0 corner: 1@1))
				yourself);
			yourself).

	self eventHandler: UiEventHandler new.
	self eventHandler grabKeyboardOnMouseEnter: true.
	self eventHandler setProperty: #handlesMouseWheel toValue: [true].
	self connect: self eventHandler signal: #mouseWheelUp: toSelector: #zoomInEvent:.
	self connect: self eventHandler signal: #mouseWheelDown: toSelector: #zoomOutEvent:.
	
	buttonBar := Morph new
		color: Color transparent;
		layoutInset: (00@0 corner: 0@0); "Fix for nasty window corner grip."
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		changeTableLayout;
		listDirection: #leftToRight;
		yourself.
	{
		{'Fit'. UiFugueIcons magnifierZoomFitIcon. #zoomFit}.
		{'Zoom In'. UiFugueIcons magnifierZoomInIcon. #zoomIn}.
		{'Zoom Out'. UiFugueIcons magnifierZoomOutIcon . #zoomOut}
	} do: [:spec |
		| button |
		button := UiToolButton new
			autoRaise: true;
			color: (Color gray: 0.85);
			icon: spec second;
			text: spec first;
			buttonStyle: #textBesideIcon;
			yourself.
		self connect: button signal: #clicked: toSelector: spec third.
		buttonBar addMorphBack: button].
	self addMorphBack: buttonBar.

	self zoomFit.