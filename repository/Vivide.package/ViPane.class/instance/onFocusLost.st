initialization - pop-up
onFocusLost
	"For popup."
	
	self hasAnyKeyboard ifFalse: [self delete].