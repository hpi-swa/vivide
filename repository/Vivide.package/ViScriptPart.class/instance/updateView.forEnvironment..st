processing
updateView: view forEnvironment: pane
	"Overridden to use new-style view references stored in properties. Those are classes or blocks. See TViObjectView trait and its implementors."

	^ ((self valueOfProperty: #view)
		ifNil: [ViProfile active ifNil: [ViTreePlainView] ifNotNil: #defaultView])
		in: [:viewClass |
			view class == viewClass
				ifTrue: [view]
				ifFalse: [viewClass new]]