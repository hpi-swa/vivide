building
transferItemFor: someDictionaries

	^ (ViTransferMorph
		withPassenger: (self passengerFor: someDictionaries)
		from: self source)
			dragTransferType: self dragTransferType;
			flagSpecs: #(($e 'Evaluate' #evaluate)($s 'Script' #script))