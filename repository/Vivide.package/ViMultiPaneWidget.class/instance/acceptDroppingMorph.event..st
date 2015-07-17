dropping
acceptDroppingMorph: aTransferMorph event: evt

	aTransferMorph passenger in: [:obj |
		(aTransferMorph hasFlag: #script)
			ifFalse: [self acceptDroppingPane: obj at: evt position]
			ifTrue: [(self acceptDroppingObject: obj at: evt position) in: [:newPane |
				(aTransferMorph source firstOwnerSuchThat: [:m | m isKindOf: ViPane])
					ifNotNil: [:sourcePane | sourcePane isInWorld ifTrue: [
						(ViSelectionConnection
							from: sourcePane
							to: newPane) attach]].
				
				ViAnimatedImageMorph flashOn: newPane.
				
				newPane
					grabKeyboard;
					debugQuery]]].

	self clearDrawFlag: #dropPane.