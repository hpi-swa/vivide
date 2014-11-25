errors
errorBtn

	^ errorBtn ifNil: [errorBtn :=
		UiToolButton new
			color: Color white;
			autoRaise: true;
			buttonStyle: #iconOnly;
			icon: UiFugueIcons exclamationRedIcon;
			disableTableLayout: true;
			topRight: self topRight;
			setToAdhereToEdge: #topRight.
		self connect: errorBtn signal: #clicked: toSelector: #showLastException.
		self addMorphFront: errorBtn.
		errorBtn]