initialization
initializeUi

	self ui setupUi: self.
	
	self initializeScreenshots.
	self initializeCallStacks.
	self initializeQueries.
	self initializeVersions.
	self initializePersonalInformation.
	
	self ui backgroundContainer fillStyle: ((GradientFillStyle ramp: {
			0.0 -> (Color gray: 0.85).
			0.5-> (Color gray: 0.95).
			1.0 -> Color white})
		origin: self ui backgroundContainer topLeft;
		direction: 20 @ 0).
	
	self connect: self ui sendBtn signal: #clicked: toSelector: #generate.
	
	self ui messageEdit
		selectAll;
		grabKeyboard.