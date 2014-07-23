pane api
model: aQueryModel

	self model ifNotNil: [:m |
		m disconnectSignal: #modelReset from: self selector: #reset.		
		m disconnectSignal: #propertiesChanged from: self selector: #reset.
		m disconnectSignal: #propertiesChanged: from: self selector: #reset].
	
	model := aQueryModel.
	self reset.
	
	self model ifNotNil: [:m |
		"root signals"
		self connect: m signal: #modelReset toSelector: #reset.		
		self connect: m signal: #propertiesChanged toSelector: #reset.
		self connect: m signal: #propertiesChanged: toSelector: #reset].