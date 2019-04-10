as yet unclassified
showVivideStack

	Transcript showln: ' --- ', thisContext sender receiver identityHash, ' | ', thisContext sender receiver class name.
	Transcript showln: ((thisContext vivideStackOfSize: 50) allButFirst joinSeparatedBy: String cr).