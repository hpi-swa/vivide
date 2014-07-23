actions
setFont: aFont

	self artifact theText
		addAttribute: (TextFontReference toFont: (StrikeFont
			familyName: aFont familyName
			pointSize: self currentFontSize))
		from: self artifact selection first
		to: self artifact selection last.
	
	self flag: #informationHiding.
	self artifact textMorph stylerStyled: self artifact theText.