handles - construction
createHandleButton: spec

	^ UiToolButton new
		icon: spec first;
		layoutInset: 0;
		buttonStyle: #iconOnly;
		autoRaise: false;
		color: ((UserInterfaceTheme current get: #color for: #BalloonMorph) ifNil: [Color gray: 0.85]);
		balloonText: spec second;
		fullBounds;
		center: spec third;
		addDropShadow.