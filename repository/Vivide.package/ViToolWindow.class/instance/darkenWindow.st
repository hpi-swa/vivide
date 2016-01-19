drawing
darkenWindow

	darkenValue ifNil: [darkenValue := 0.0].

	"Only darken the window if there is some occlusion."
	self visibleAreaPercent >= 75
		ifTrue: [darkenValue := darkenValue - 0.2 max: 0.0]
		ifFalse: [darkenValue := darkenValue + 0.2 min: 1.0].
	
	self isNotUsed ifTrue: [^ self closeBoxHit].
	
	self redrawLater.
	
	darkenValue >= self darkenThreshold ifFalse: [
		self
			addAlarm: #darkenWindow
			after: self darkenTimeout].