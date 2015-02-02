initialization
initialize

	orientation := #vertical.

	super initialize.
	
	self
		extent: 9@10;
		color: (Color gray: 0.85);
		listCentering: #center;
		layoutInset: 0;
		updateLayout;
		fadeOutInstantly.

	self connect: self eventHandler signal: #mouseEntered: toSelector: #fadeIn.
	self connect: self eventHandler signal: #mouseLeft: toSelector: #fadeOut.
	
	self connect: self eventHandler signal: #mousePressed: toSelector: #startHandleMovement:.
	self connect: self eventHandler signal: #mouseMoved: toSelector: #doHandleMovement:.
	self connect: self eventHandler signal: #mouseReleased: toSelector: #finishHandleMovement:.
	
	self connect: self eventHandler signal: #mouseClicked: toSelector: #onClick.
	
	"No keyboard handling."
	self eventHandler setProperty: #handlesKeyboard toValue: [false].
	self eventHandler disconnectSignal: #mousePressed: from: self selector: #grabKeyboard.