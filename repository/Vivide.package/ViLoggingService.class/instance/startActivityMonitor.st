process
startActivityMonitor

	activityMonitor ifNotNil: [^ self].
	
	activityMonitor := [
		| delay previousStats |
		delay := Delay forSeconds: 10.
		[
			previousStats := HandMorph eventStats copy.
			delay wait.
			previousStats keysAndValuesDo: [:key :value |
				previousStats
					at: key
					put: (HandMorph eventStats at: key) -
						(previousStats at: key)].
			self trigger: previousStats.
		] repeat ] newProcess.
	activityMonitor name: 'Vivide Activity Monitor'.
	activityMonitor priority: UIManager default uiProcess priority + 5.
	activityMonitor resume.