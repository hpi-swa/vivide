accessing
fontToUse

	| family |
	family := self font familyName.
	
	self labelPosition == #topLeft
		ifTrue: [^ StrikeFont familyName: family pointSize: 12 emphasized: 1].

	(TTCFont pointSizes allButLast: 4) reversed do: [:pt |
		| f w |
		f := StrikeFont familyName: family pointSize: pt.
		w := f widthOfString: self label.
		((w+10) > self width or: [f height > self height])
			ifFalse: [^ f]].

	^ self font