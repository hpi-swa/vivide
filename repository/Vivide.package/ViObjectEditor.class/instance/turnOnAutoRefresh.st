as yet unclassified
turnOnAutoRefresh

	self turnOffAutoRefresh.
	
	ActiveWorld
		startStepping: self
		at: Time millisecondClockValue
		selector: #refreshModel
		arguments: nil stepTime: 5000.

	self world ifNotNil: [
		ViAnimatedImageMorph
			flyOutOn: self
			with: UiFugueIcons alarmClockSelectIcon].