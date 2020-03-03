building
transferItemFor: someDictionaries

	^ (ViTransferMorph
		withPassenger: (self passengerFor: someDictionaries)
		from: self source)
			dragTransferType: self dragTransferType;
			flagSpecs: nil "#(($e 'Evaluate' #evaluate)($s 'Script' #script)($u 'Use' #use))"