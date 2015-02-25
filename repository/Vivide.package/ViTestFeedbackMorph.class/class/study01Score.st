as yet unclassified
study01Score

	self new
		block: [ | game |
			game := SWATrisGame new.
			game newSinglePlayer.
			((game firstPlayField submorphNamed: #scoreBoard)
				submorphNamed: #currentPoints)
					isKindOf: LedMorph];
		open.