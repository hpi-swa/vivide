actions
chooseReference

	| pg |
	pg := ViPane new.
	pg currentQuery: (self step organization stepById: #orderedSteps).
	pg objects: {self step organization}.
	pg
		chooseObjectAt: self ui openReferenceBtn boundsInWorld bottomLeft
		thenNotify: self
		with: #currentReference:.