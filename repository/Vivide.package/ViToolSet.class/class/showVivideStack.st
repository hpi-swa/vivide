as yet unclassified
showVivideStack

	Transcript showln: ' --- ', thisContext sender receiver identityHash, ' | ', thisContext sender receiver class name.
	Transcript show: ((thisContext vivideStackOfSize: 50) allButFirst inject: '' into: [:all :each | all, String cr, each asString, ' --- ', each receiver identityHash asString]).