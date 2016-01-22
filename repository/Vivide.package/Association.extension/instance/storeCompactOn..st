*vivide
storeCompactOn: aStream

	aStream nextPut: $(.
	key storeCompactOn: aStream.
	aStream nextPutAll: ' -> '.
	value storeCompactOn: aStream.
	aStream nextPut: $).