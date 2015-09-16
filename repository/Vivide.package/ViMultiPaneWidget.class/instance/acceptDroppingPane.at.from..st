dropping
acceptDroppingPane: aPane at: aPoint from: source

	self assert: (self panes identityIncludes: aPane) not.

	self fullScript isDefault ifTrue: [
		Error signal: 'Cannot modify default script here. Copy first.'].

	"Compose a tree."
	aPane currentQuery isMeta ifTrue: [
		self wrapPanesIntoMultiPaneWidget].

	"Drop source context because this pane is embedded in a new one."
	aPane connections 
		select: [:c | (self panes includesAnyOf: {c source. c target}) not]
		thenDo: [:c | c detach].

	"Auto copy to avoid script stealing from default organization."
	aPane currentQuery ifNotNil: [:script |
		script isDefault ifTrue: [aPane currentQuery: script deepCopy]].

	aPane
		topLeft: aPoint;
		adoptOrganization: self organizer.
	
	self addPane: aPane.

	self assert: 1 equals: (self submorphs count: [:m | (m instVarNamed: #fullBounds) isNil]).

	"Auto-establish data flow connection."
	(source withAllOwners detect: [:m | m isKindOf: ViPane] ifNone: [])
		ifNotNil: [:sourcePane | sourcePane owner == self ifTrue: [
			(ViSelectionConnection
				from: sourcePane
				to: aPane) attach]].

	^ aPane