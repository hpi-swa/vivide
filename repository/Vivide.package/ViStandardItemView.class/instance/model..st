pane api
model: aQueryNode

	queryModel ifNotNil: [:m |
		m disconnectSignal: #modelReset from: self selector: #reset.
		finder root: nil.
		currentQueryView model: nil].
	queryModel := aQueryNode.
	
	queryModel ifNotNil: [:m |
		finder root: m.
		currentQueryView model: m.
		self connect: m signal: #modelReset toSelector: #reset.
		self updateQueryCommands].