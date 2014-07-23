accessing
model: anObject

	model ifNotNil: [:m |
		m disconnectSignal: #modelReset from: self selector: #changed:].
	model := anObject.
	self changed: #list.
	model ifNotNil: [:m |
		self connect: m signal: #modelReset toSelector: #changed: pattern: #(=list)].