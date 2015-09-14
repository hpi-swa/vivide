initialization
initializeToolbar

	| buttonBar |
	buttonBar := Morph new
		color: Color transparent;
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