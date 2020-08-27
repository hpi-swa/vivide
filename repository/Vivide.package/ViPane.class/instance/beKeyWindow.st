activation and focus
beKeyWindow
	"For compatibility with Morphic's (system) window management."
	
	self owner notNil ifFalse: [^ self].
	
	self owner == self world
		ifTrue: [SystemWindow new beKeyWindow].
	
	self owner submorphsDo: [:m |
		(m isPane and: [m ~~ self]) ifTrue: [
			m decoration window lookUnfocused]].
	self decoration window lookFocused.
	self comeToFront.
	
	self flag: #performance.
	self hasAnyKeyboard ifFalse: [self grabKeyboard].