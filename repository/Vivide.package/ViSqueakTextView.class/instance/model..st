as yet unclassified
model: anObject

	model ifNotNil: [:m |
		m disconnectSignal: #modelReset from: self selector: #changed:].
	model := anObject.
	self changed: #text.
	model ifNotNil: [:m |
		self connect: m signal: #modelReset toSelector: #changed: pattern: #(=text)].