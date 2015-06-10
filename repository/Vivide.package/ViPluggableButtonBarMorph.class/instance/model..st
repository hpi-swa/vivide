initialization
model: anItemModel

	self disconnectModel.
	
	model := anItemModel.

	self
		reset;
		connectModel.