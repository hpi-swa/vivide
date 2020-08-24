errors
showError: info

	| d |
	d := self decorationNamed: #message ifAbsent: [self addMessageDecoration].

	self clearError.	"terminate old process if any"

	d
		setProperty: #suspendedProcess toValue: info first;
		setProperty: #errorWasInUIProcess toValue: info second;
		setProperty: #description toValue: info third;
		setProperty: #maliciousScript toValue: info fourth; 
		balloonText: info third;
		comeToFront.

	d submorphs first icon: (d valueOfProperty: #errorIcon).

	d submorphs second contents: (
		Text
			string: info third
			attribute: TextColor white).

	d show.