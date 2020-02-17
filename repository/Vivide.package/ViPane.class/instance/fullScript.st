as yet unclassified
fullScript
	"Lazy script update mechanism--especially for meta scripts that reflect GUI properties. See ViMultiPaneWidget."

	self flag: #metaScript.
	(self view respondsTo: #fullScript)
		ifTrue: [self view fullScript].
	^ self script