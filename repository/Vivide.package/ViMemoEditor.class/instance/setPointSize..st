actions
setPointSize: anInteger

	self artifact theText
		addAttribute: (TextFontReference toFont: (StrikeFont
			familyName: self currentFontFamilyName
			pointSize: anInteger))
		from: self artifact selection first
		to: self artifact selection last.
	
	self flag: #informationHiding.
	self artifact textMorph stylerStyled: self artifact theText.