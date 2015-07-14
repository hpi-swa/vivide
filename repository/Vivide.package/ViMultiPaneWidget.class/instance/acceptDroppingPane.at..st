as yet unclassified
acceptDroppingPane: aPane at: aPoint

	self fullScript isDefault ifTrue: [
		Error signal: 'Cannot modify default script here. Copy first.'].

	"Compose a tree."
	aPane currentQuery isMeta ifTrue: [
		self wrapPanesIntoMultiPaneWidget].

	"Drop source context because this pane is embedded in a new one."
	aPane connections copy do: [:c | c detach].

	"Auto copy to avoid script stealing from default organization."
	aPane currentQuery ifNotNil: [:script |
		script isDefault ifTrue: [aPane currentQuery: script deepCopy]].

	aPane
		topLeft: aPoint;
		adoptOrganization: self organizer.
	
	self addPane: aPane.