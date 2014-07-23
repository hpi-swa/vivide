initialization
initialize

	super initialize.
	
	self
		initializeResultList;
		initializeResultListDecorator.
	
	self
		autoAccept: true;
		hideCursor: false.
		
	"self connect: self signal: #returnPressed: toSelector: #selectResult."
	self connect: self signal: #returnPressed: toSelector: #startSearch.
	self connect: self signal: #escapePressed: toSelector: #stopSearch.
	self connect: self signal: #escapePressed: toSelector: #selectAll.
	
	self connect: self signal: #textEdited: toSelector: #stopSearch.
	self connect: self signal: #textEdited: toSelector: #clearResultsIfEmpty.
	
	self eventHandler on: Character arrowDown send: #passKeyboardFocusToResultList to: self.
	self eventHandler on: Character arrowUp send: #passKeyboardFocusToResultList to: self.
	
	self connect: self eventHandler signal: #mouseEntered: toSelector: #showResults.
	self connect: self eventHandler signal: #focusReceived toSelector: #showResults.
	
	self connect: self eventHandler signal: #focusLost toSelector: #onFocusLost.
	
	self clearResults.
	
	self initializePreviewHandler.