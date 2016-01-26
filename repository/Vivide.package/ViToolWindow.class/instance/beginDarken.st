actions
beginDarken

	"Assume a natural occlusion of important windows on small displays. No darkening then."
	Display extent <= (1280@720)
		ifFalse: [^ self].

	self
		removeAlarm: #darkenWindow;  
		addAlarm: #darkenWindow
		after: self darkenTimeout.