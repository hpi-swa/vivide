accessing
font

	^ font ifNil: [
		StrikeFont
			familyName: 'Tahoma'
			pointSize: 24]