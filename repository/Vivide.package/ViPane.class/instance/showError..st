errors
showError: info

	| wasVisible |
	wasVisible := self errorBtn visible.

	"terminate old process if any"
	self clearError.

	self errorBtn
		setProperty: #suspendedProcess toValue: info first;
		setProperty: #errorWasInUIProcess toValue: info second;
		setProperty: #description toValue: info third;
		setProperty: #maliciousScript toValue: info fourth; 
		balloonText: info third;
		comeToFront;
		topRight: self topRight.
		
	wasVisible
		ifTrue: [self errorBtn show]
		ifFalse: [self errorBtn fadeIn].