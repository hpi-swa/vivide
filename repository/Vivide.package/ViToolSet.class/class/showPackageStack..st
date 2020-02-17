as yet unclassified
showPackageStack: name

	| caller |
	caller := thisContext.
	[caller receiver == self] whileTrue: [caller := caller sender].

	Transcript showln: ' --- ', caller receiver identityHash, ' | ', caller receiver class name.
	Transcript show: ((caller package: name stackOfSize: 50) inject: '' into: [:all :each | all, String cr, each asString, ' --- ', each receiver identityHash asString, ' --- ', each receiver printString]).