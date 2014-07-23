*vivide
blueButtonPressed
	"Workaround for wrong VM behavior."
	
	^ super blueButtonPressed and: [super controlKeyPressed not]    