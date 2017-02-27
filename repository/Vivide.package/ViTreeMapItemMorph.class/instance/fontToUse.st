accessing
fontToUse

	| family brd f |	
	self labelPosition == #topLeft
		ifTrue: [^ self font "emphasized: 1"].

	family := self font familyName.
	brd := self cornerRadius * 2.
	f := self font.
	
	(TTCFont pointSizes "allButLast: 4") reversed do: [:pt |
		| w |
		f := StrikeFont familyName: family pointSize: pt.
		w := f widthOfString: self label.
		((w+brd) > self width or: [f height > self height])
			ifFalse: [^ f]].

	^ f