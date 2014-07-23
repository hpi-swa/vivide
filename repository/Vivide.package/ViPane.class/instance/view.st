accessing - view
view

	^ self submorphs detect: [:m | m ~~ errorBtn] ifNone: [nil]