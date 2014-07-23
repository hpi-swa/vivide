as yet unclassified
setFont: aFont

	self addSelectionAttribute: (TextFontReference toFont: (StrikeFont
			familyName: aFont familyName
			pointSize: self currentFontSize)).