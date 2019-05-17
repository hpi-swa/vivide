actions - profile
copyToClipboard
	
	Clipboard clipboardText: (String streamContents: [:stream |
		self thisStep storeOn: stream withInput: self input]).