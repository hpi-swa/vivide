as yet unclassified
outgoingObjects: someObjects from: aPane

	| i |
	i := 0.
	(self paneSpecs detect: [:spec |
		"enumerate output panes --- cache it?"
		((spec at: #out) includes: #outer) ifTrue: [i := i + 1].
		(spec at: #id) = (aPane valueOfProperty: #id)]).
	self outgoingObjects at: i put: someObjects.

	self selectionChanged: ((self outgoingObjects size = 1
		ifTrue: [self outgoingObjects first]
		ifFalse: [self outgoingObjects]) collect: [:o |
			Dictionary newFrom: {#object -> o}]).