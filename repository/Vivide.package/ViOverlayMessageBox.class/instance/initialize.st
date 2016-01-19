initialization
initialize

	super initialize.
	
	self ui setupUi: self.
	
	"Order morphs."
	self ui buttonContainer comeToFront.
	self ui messageContainer comeToFront.
	self ui titleLbl comeToFront.
	
	self eventHandler: UiEventHandler new. 
	
	self ignoresColorMappings: true.