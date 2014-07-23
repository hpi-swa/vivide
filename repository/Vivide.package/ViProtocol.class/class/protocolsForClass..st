instance creation
protocolsForClass: aClass

	^ ((aClass theNonMetaClass organization categories reject: [:cat | cat = Categorizer nullCategory])
		ifEmpty: [#()] ifNotEmpty: [:categories | categories collect: [:cat |
		ViProtocol named: cat inClass: aClass theNonMetaClass]]),
	((aClass theMetaClass organization categories reject: [:cat | cat = Categorizer nullCategory])
		ifEmpty: [#()] ifNotEmpty: [:categories | categories collect: [:cat |
		ViProtocol named: cat inClass: aClass theMetaClass]])