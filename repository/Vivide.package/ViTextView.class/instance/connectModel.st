initialization
connectModel

	self model ifNotNil: [:m |
		"root signals"
		self connect: m signal: #modelReset toSelector: #reset.
		self connect: m signal: #childrenInsertedFrom:to:inGroup: toSelector: #appendFrom:to:inGroup:.
		
		self connect: m signal: #propertiesChanged toSelector: #reset.
		self connect: m signal: #propertiesChanged: toSelector: #reset].