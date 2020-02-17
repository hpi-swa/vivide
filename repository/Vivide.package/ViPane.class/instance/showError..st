errors
showError: info

	| wasVisible d |
	d := self errorBtn.
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