as yet unclassified
setFontSize: anInteger

	self addSelectionAttribute: (TextFontReference toFont: (StrikeFont
		familyName: self currentFont familyName
		pointSize: anInteger)).