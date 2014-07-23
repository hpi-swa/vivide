dropping
acceptDroppingMorph: aTransferMorph event: evt

	| droppedObject |
	self clearDropRectangle.
	
	self flag: #ugly. "mt: a workaround for single objects stored in an editor state"
	(aTransferMorph dragTransferType == #editorStates
		and: [aTransferMorph passenger first properties includesKey: #object]) ifTrue: [
			^ self
				acceptObjects: {(aTransferMorph passenger first properties at: #object)}
				fromEditor: nil
				event: evt].
	
	(#(objects queries) includes: aTransferMorph dragTransferType) ifTrue: [
		^ self
			acceptObjects: aTransferMorph passenger
			fromEditor: aTransferMorph source
			event: evt].
	aTransferMorph dragTransferType == #artifact ifTrue: [
		^ self
			acceptArtifact: aTransferMorph passenger
			fromEditor: aTransferMorph source
			event: evt].
		
	aTransferMorph dragTransferType == #operation ifTrue: [
		^ self
			acceptOperation: aTransferMorph passenger
			context: aTransferMorph source
			event: evt].
	aTransferMorph dragTransferType == #operations ifTrue: [
		^ self
			acceptOperation: aTransferMorph passenger first
			context: aTransferMorph source
			event: evt].
	aTransferMorph dragTransferType == #tapeStates ifTrue: [
		^ self
			acceptTapeState: aTransferMorph passenger first
			event: evt]  .
	
	droppedObject := self convertPassengerBlock
		cull: aTransferMorph passenger
		cull: aTransferMorph dragTransferType
		cull: aTransferMorph source.
		
	self dropEditor: droppedObject event: evt.