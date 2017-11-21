stepping and presenter
step

	| d next |
	images isEmpty ifTrue: [^ self].
		
	nextTime > Time millisecondClockValue
		ifTrue: [^self].
	self changed .
	next := images at: (imageIndex := imageIndex \\ images size + 1).
	self image getCanvas translucentImage: next at: next offset.
	self changed . 
	d := (delays at: imageIndex) ifNil: [0].
	nextTime := Time millisecondClockValue + d
