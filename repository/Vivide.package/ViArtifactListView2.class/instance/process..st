as yet unclassified
process: node

	model ifNotNil: [:m | m disconnectSignal: #modelReset from: self selector: #reset].

	model := node.

	model ifNotNil: [:m | self connect: m signal: #modelReset toSelector: #reset].

	self reset.