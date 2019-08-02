running
tearDown

	ViActiveVivide
		value: vivide
		during: [
			self forceGuiUpdate.
			
			"Customized closing..."
			vivide delete]. 

	super tearDown.