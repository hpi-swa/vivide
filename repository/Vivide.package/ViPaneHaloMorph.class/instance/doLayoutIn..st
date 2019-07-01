as yet unclassified
doLayoutIn: layoutBounds
	"Overwrite to update pane-connection morphs."
	
	self target ifNil: [^ super doLayoutIn: layoutBounds].
	newOutputConnection ifNotNil: [^ super doLayoutIn: layoutBounds].
	
	self submorphsDo: [:s | s fullBounds].
	
	outputConnections keysAndValuesDo: [:connection :spec |
		| connectionMorph connectionButton |
		connectionMorph := spec first.
		connectionButton := spec second.
		
		connectionMorph
			deferUpdates: false;
			setFrom: connectionButton center
			to: connection target leftCenter].

	inputConnections keysAndValuesDo: [:connection :spec |
		| connectionMorph connectionButton |
		connectionMorph := spec first.
		connectionButton := spec second.
		
		connectionMorph
			deferUpdates: false;
			setFrom: connection source rightCenter
			to: connectionButton center].
	
	super doLayoutIn: layoutBounds.