support - debugging
interpretUpToSelf

	^ self interpretUpToDetect: [:script | script == self object]  