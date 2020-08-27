morphic - events
handlesMouseDown: evt
	"Avoid owners such as the Morphic world to grab this view."
	
	^ true