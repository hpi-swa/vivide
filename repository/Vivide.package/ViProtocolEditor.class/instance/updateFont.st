updating
updateFont

	self theClass ifNil: [^ self].
	
	self ui nameEdit font: (StrikeFont
		familyName: 'Bitmap Segoe UI'
		pointSize: 9
		emphasized: (self theClass isMeta
			ifTrue: [TextEmphasis underlined emphasisCode]
			ifFalse: [0])).