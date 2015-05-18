as yet unclassified
storeDataOn: aStream

	method := nil. "Clear cache. Do-it methods cannot be serialized properly."
	^ super storeDataOn: aStream