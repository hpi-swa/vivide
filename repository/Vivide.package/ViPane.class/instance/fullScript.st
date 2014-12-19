as yet unclassified
fullScript
	"Lazy script update mechanism--especially for meta scripts that reflect GUI properties. See ViMultiPaneWidget."

	(self view respondsTo: #fullScript)
		ifTrue: [self view fullScript].
	^ self currentQuery