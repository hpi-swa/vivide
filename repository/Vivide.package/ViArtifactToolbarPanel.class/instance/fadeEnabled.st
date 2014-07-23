accessing
fadeEnabled 
	"Respect the alpha value while drawing?"
	
	^ fadeEnabled ifNil: [fadeEnabled := true]