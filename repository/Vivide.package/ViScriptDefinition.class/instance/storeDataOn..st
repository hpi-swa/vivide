as yet unclassified
storeDataOn: aStream

	block := nil. "Clear cache. Blocks cannot be serialized."
	^ super storeDataOn: aStream