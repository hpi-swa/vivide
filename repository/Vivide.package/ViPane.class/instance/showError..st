errors
showError: info

	| wasVisible d |
	d := self decorationNamed: #error ifAbsentPut: [
		UiToolButton new
			color: Color white;
			autoRaise: true;
			buttonStyle: #iconOnly;
			icon: UiFugueIcons balloonSmileyIcon scaleIconToDisplay;
			cellPositioning: #center; "#topRight;"
			visible: false;
			in: [:btn | self connect: btn signal: #clicked: toSelector: #showLastException];
			yourself].
	wasVisible := d visible.

	"terminate old process if any"
	self clearError.

	d
		setProperty: #suspendedProcess toValue: info first;
		setProperty: #errorWasInUIProcess toValue: info second;
		setProperty: #description toValue: info third;
		setProperty: #maliciousScript toValue: info fourth; 
		balloonText: info third;
		comeToFront.

	wasVisible
		ifTrue: [d show]
		ifFalse: [d fadeIn].