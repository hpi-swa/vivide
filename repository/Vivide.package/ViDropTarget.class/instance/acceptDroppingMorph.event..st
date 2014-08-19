dropping
acceptDroppingMorph: aTransferMorph event: evt

	| droppedObject |
	self clearDropRectangle.
	
	aTransferMorph dragTransferType == #objects ifTrue: [
		^ self
			acceptObjects: aTransferMorph passenger
			fromEditor: aTransferMorph source
			event: evt].
	aTransferMorph dragTransferType == #artifact ifTrue: [
		^ self
			acceptArtifact: aTransferMorph passenger
			fromEditor: aTransferMorph source
			event: evt].
	
	droppedObject := self convertPassengerBlock
		cull: aTransferMorph passenger
		cull: aTransferMorph dragTransferType
		cull: aTransferMorph source.
		
	self dropEditor: droppedObject event: evt.