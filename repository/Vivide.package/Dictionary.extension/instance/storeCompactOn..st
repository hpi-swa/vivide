*vivide
storeCompactOn: aStream

	aStream
		nextPut: $(;
		nextPutAll: self class name;
		nextPutAll: ' newFrom: '.

	(self associations sorted: [:a :b | a key asString <= b key asString])
		storeCompactOn: aStream.

	aStream nextPut: $).