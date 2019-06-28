as yet unclassified
showPackageStack: name

	Transcript showln: ' --- ', thisContext sender receiver identityHash, ' | ', thisContext sender receiver class name.
	Transcript show: (((thisContext package: name stackOfSize: 50) allButFirst: 1) inject: '' into: [:all :each | all, String cr, each asString, ' --- ', each receiver identityHash asString]).