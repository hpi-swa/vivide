initialization
model: anItemModel

"	anItemModel ifNil: [self halt]."

	self disconnectModel.
	model := anItemModel.
	self
		reset;
		connectModel.