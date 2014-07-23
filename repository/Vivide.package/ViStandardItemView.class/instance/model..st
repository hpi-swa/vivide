pane api
model: aQueryNode

	queryModel ifNotNil: [:m |
		m disconnectSignal: #modelReset from: self selector: #reset.
		finder root: nil.
		currentQueryView model: nil].
	queryModel := aQueryNode.
	
	queryModel ifNotNil: [:m |
		self connect: m signal: #modelReset toSelector: #reset.
		finder root: m.
		currentQueryView model: m.
		self updateQueryCommands].