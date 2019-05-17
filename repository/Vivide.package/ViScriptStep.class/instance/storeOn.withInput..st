serialization
storeOn: stream withInput: someObjects

	| args |
	args := [someObjects asList compactStoreString] on: Error do: [:ex | '#()'].
	
	self storeOn: stream.

	stream
		nextPutAll: 'openScriptWith: ';
		nextPutAll: args.