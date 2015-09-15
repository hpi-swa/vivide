as yet unclassified
wrapPaneIntoMultiPaneWidget

	"Copy default scripts on the fly."
	self pane currentQuery ifNotNil: [:script |
		script isDefault ifTrue: [self pane currentQuery: script deepCopy]].

	"Set up new pane"
	self setProperty: #isSpawning toValue: true.
	self pane: (ViPane new
		initializeMetaScriptFromPane: self pane;
		yourself).
	self removeProperty: #isSpawning.
		
	^ self pane view