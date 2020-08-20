activation and focus
beKeyWindow
	"For compatibility with Morphic's (system) window management."
	
	SystemWindow new beKeyWindow.
	self world submorphsDo: [:m |
		(m isPane and: [m ~~ self]) ifTrue: [
			m decoration window hasDropShadow: false]].
	self decoration window hasDropShadow: true.
	self comeToFront.