as yet unclassified
childrenFor: node

	node ~~ model ifTrue: [
		node disconnectSignal: #modelReset from: self selector: #triggerReset.
		self connect: node signal: #modelReset toSelector: #triggerReset].

	^ node nodes