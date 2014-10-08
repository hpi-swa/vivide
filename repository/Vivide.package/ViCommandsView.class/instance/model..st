initialization
model: anObject

	model ifNotNil: [:m |
		m disconnectSignal: #modelReset from: self selector: #reset].
	model := anObject.
	model ifNotNil: [:m |
		self connect: m signal: #modelReset toSelector: #reset].
	self reset.