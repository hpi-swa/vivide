as yet unclassified
process: node

	self model ifNotNil: [:m |
		m disconnectSignal: #childrenInsertedFrom:to:inGroup: from: self selector: #appendFrom:to:inGroup:].

	model := node.
	self reset.

	self connect: node signal: #childrenInsertedFrom:to:inGroup: toSelector: #appendFrom:to:inGroup:.