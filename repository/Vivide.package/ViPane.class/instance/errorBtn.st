errors
errorBtn

	^ self decorationNamed: #error ifAbsentPut: [
		UiToolButton new
			color: Color white;
			autoRaise: true;
			buttonStyle: #iconOnly;
			icon: UiFugueIcons balloonSmileyIcon scaleIconToDisplay;
			cellPositioning: #topRight;
			visible: false;
			in: [:btn | self connect: btn signal: #clicked: toSelector: #showLastException];
			yourself]