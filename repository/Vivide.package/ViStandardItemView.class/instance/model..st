pane api
model: aQueryNode

	queryModel ifNotNil: [:m |
		m disconnectSignal: #modelReset from: self selector: #reset.
		m disconnectSignal: #propertiesChanged from: self selector: #reset.
		m disconnectSignal: #propertiesChanged: from: self selector: #reset.
		
		finder root: nil.
		currentQueryView model: nil].
	queryModel := aQueryNode.
	
	queryModel ifNotNil: [:m |
		finder root: m.
		
		self connect: m signal: #modelReset toSelector: #reset.
		self connect: m signal: #propertiesChanged toSelector: #reset.
		self connect: m signal: #propertiesChanged: toSelector: #reset.

		currentQueryView model: m.
		
		self updateQueryCommands.
		self ensureSelection].