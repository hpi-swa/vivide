initialization
initializeEventHandler

	self eventHandler: UiEventHandler new.  

	self eventHandler
		grabKeyboardOnMouseEnter: false;  
		setProperty: #handlesMouseDown toValue: [false];
		setProperty: #handlesMouseUp toValue: [false];
		setProperty: #handlesKeyboard toValue: [false].
		
	self connect: self eventHandler signal: #mouseEntered: toSelector: #alpha: pattern: #(= 1.0).