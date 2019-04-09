actions - profile
copyToClipboard
	"Copy args only if there is no error."
	
	| args |
	
	args := [self input asArray compactStoreString] on: Error do: [:ex | nil].
	
	Clipboard clipboardText: (String streamContents: [:stream |
		self thisStep storeOn: stream.
		args ifNotNil: [stream nextPutAll: 'openScriptWith: '; nextPutAll: args]]).