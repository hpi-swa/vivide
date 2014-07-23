toolbar - initialization
initializeToolbarOperations
	"Allow clicking operations. Not just drag'n'drop."

	self
		connect: self toolbar rightPanel
		signal: #operationSelected:inGroup:
		toSelector: #doOperation:inGroup:.

	self
		connect: self toolbar rightPanel
		signal: #operationSelected:argument:inGroup:
		toSelector: #doOperation:argument:inGroup:.
				
	self toolbar rightPanel operationContext: [:editor | editor context].