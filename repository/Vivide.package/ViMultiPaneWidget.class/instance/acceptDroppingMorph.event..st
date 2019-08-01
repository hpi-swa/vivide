dropping
acceptDroppingMorph: aTransferMorph event: evt

	aTransferMorph passenger in: [:obj |
		((aTransferMorph hasFlag: #script)
			ifFalse: [self acceptDroppingPane: obj at: evt position from: aTransferMorph source]
			ifTrue: [self acceptDroppingObject: obj at: evt position from: aTransferMorph source]) in: [:newPane |
				ViAnimatedImageMorph flashOn: newPane.
				
				newPane
					grabKeyboard;
					editScript]].

	self clearDrawFlag: #dropPane.