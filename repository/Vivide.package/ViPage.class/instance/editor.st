accessing
editor

	self allOwnersDo: [:morph |
		(morph isKindOf: ViEditor)
			ifTrue: [^ morph]].
	^ nil