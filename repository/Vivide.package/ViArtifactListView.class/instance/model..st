as yet unclassified
model: aQueryModel

	self disconnectModel.
	model := aQueryModel.
	self
		reset;
		connectModel.