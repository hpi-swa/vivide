initialization
model: queryNode

	model ifNotNil: [
		model disconnectSignal: #modelReset from: self selector: #reset].
	model := queryNode.
	model ifNotNil: [
		self connect: model signal: #modelReset toSelector: #reset].
	self reset.