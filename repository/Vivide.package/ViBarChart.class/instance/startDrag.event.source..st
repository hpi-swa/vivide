as yet unclassified
startDrag: object event: evt source: morph

	evt hand grabMorph: (
		(ViTransferMorph withPassenger: {object} from: self)
			dragTransferType: #objects).