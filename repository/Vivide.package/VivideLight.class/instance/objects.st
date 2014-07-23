accessing
objects
	"Return a list of all objects that are currently visible."
	
	^ self toolWindows gather: [:wnd |
		wnd editor objects]