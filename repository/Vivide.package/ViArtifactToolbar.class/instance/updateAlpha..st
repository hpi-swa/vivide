layout
updateAlpha: aMouseEvent

	(self bounds containsPoint: aMouseEvent position) ifTrue: [
		(self leftPanel bounds containsPoint: aMouseEvent position)
			ifFalse: [leftBar alpha: (1.0 - ((aMouseEvent position x - self left max: 0) / (self width / 2)) max: 0.3)].
		topBar alpha: (1.0 - ((aMouseEvent position y - self top - topBar height max: 0) / (self height / 2)) max: 0.3).
		(self rightPanel bounds containsPoint: aMouseEvent position)
			ifFalse: [rightBar alpha: (1.0 - ((self right - aMouseEvent position x max: 0) / (self width / 2)) max: 0.3)]].