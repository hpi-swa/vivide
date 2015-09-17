event handling
startDrag: object event: evt source: morph

	| selectedObjects |
	selectedObjects := (self selectedItems collect: [:item | item valueOfProperty: #object])
		ifEmpty: [{object}].

	evt hand grabMorph: (
		(ViTransferMorph withPassenger: selectedObjects from: self)
			dragTransferType: #objects).