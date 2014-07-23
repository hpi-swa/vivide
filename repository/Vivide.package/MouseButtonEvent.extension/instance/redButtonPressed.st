*vivide
redButtonPressed
	"Workaround for wrong VM behavior."
	
	^ super redButtonPressed or: [
		super blueButtonPressed and: [self controlKeyPressed]]