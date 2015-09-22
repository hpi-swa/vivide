errors
showError: exception

	self errorBtn
		setProperty: #error toValue: exception;
		balloonText: exception description;
		comeToFront;
		topRight: self topRight;
		fadeIn