accessing
model: aModelNode

	model == aModelNode ifTrue: [^ self].

	model ifNotNil: [:m | m disconnectSignal: #modelReset from: self selector: #reset].
	model := aModelNode.
	model ifNotNil: [:m | self connect: m signal: #modelReset toSelector: #reset].

	self reset.