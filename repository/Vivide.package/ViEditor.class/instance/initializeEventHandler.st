initialization
initializeEventHandler

	self eventHandler: UiEventHandler new.
	
	self
		connect: self eventHandler
		signal: #focusReceivedInSubmorph:
		toSelector: #setHeaderFocus:
		pattern: #(=true).
		
	self
		connect: self eventHandler
		signal: #focusLostInSubmorph:
		toSelector: #setHeaderFocus:
		pattern: #(=false).
		
	self sgConnectSignal: #focusChanged: toSelector: #onFocusChanged:.