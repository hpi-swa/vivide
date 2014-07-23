accessing
convertPassengerBlock

	^ convertPassengerBlock ifNil: [convertPassengerBlock := [:passenger :type :source | passenger]]