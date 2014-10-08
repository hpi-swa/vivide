initialization
disconnectModel

	self model ifNotNil: [:m |
		m disconnectSignal: #modelReset from: self selector: #reset.
		m disconnectSignal: #childrenInsertedFrom:to:inGroup: from: self selector: #appendFrom:to:inGroup:.
		
		m disconnectSignal: #propertiesChanged from: self selector: #reset.
		m disconnectSignal: #propertiesChanged: from: self selector: #reset].
		