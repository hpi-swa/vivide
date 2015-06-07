initialization
model: aModel

	self disconnectModel.
	
	model := aModel.

	self
		reset;
		connectModel.