accessing
objects
	"Return a list of all objects that are currently visible."
	
	^ self editors gather: [:editor |
		editor objects]