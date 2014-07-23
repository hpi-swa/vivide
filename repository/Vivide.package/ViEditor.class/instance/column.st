accessing
column

	self allOwnersDo: [:morph |
		(morph isKindOf: ViEditorColumn)
			ifTrue: [^ morph]].
	^ nil