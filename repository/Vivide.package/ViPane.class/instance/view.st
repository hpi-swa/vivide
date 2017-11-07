accessing - view
view

	self flag: #badHack.
	^ self submorphs detect: [:m | m ~~ errorBtn] ifNone: [nil]