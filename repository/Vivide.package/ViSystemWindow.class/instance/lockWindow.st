as yet unclassified
lockWindow

	self beSticky.
	self disableDropShadow: true.
	self borderWidth: 0. "borderStyle: (BorderStyle inset width: 1)."
	self color: Color gray.
	self paneColor: Color gray.
	
	"self model color: Color transparent."
	
	
	self pushOtherWindowsAside.