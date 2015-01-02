dropping
acceptDroppingMorph: aTransferMorph event: evt

	aTransferMorph passenger in: [:obj |
		(aTransferMorph hasFlag: #script)
			ifFalse: [self acceptDroppingPane: obj at: evt position]
			ifTrue: [(self acceptDroppingObject: obj at: evt position) in: [:newPane |
				(aTransferMorph source firstOwnerSuchThat: [:m | m isKindOf: ViPane])
					ifNotNil: [:sourcePane |
						(ViSelectionConnection
							from: sourcePane
							to: newPane) attach].
				newPane
					grabKeyboard;
					debugQuery]]].

	self clearDrawFlag: #dropPane.