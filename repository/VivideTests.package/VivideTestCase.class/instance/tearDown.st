running
tearDown

	ViActiveVivide
		value: vivide
		during: [
			self forceGuiUpdate.
			
			"Customized closing..."
			vivide
				clearToolSet;
				delete]. 

	super tearDown.