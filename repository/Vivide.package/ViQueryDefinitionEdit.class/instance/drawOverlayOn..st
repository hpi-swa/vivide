drawing
drawOverlayOn: aCanvas

	super drawOverlayOn: aCanvas.
	
	inBtn visible ifFalse: [^ self].
	
	aCanvas
		drawString: ':'
		at: sendersBtn topRight + (2@0)
		font: (StrikeFont
			familyName: UiPlatform current standardDefaultTextFont familyName
			pointSize: 8)
		color: (Color fromString: #AAAAAA).
		
	aCanvas
		drawString: '>'
		at: inBtn topRight + (2@0)
		font: (StrikeFont
			familyName: UiPlatform current standardDefaultTextFont familyName
			pointSize: 8)
		color: (Color fromString: #AAAAAA).