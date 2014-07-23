as yet unclassified
selectedNode

	(listIndex = 0 or: [listIndex isNil])
		ifTrue: [^ nil]
		ifFalse: [	self model ifNotNil: [:m | | offset |
			offset := 0.
			m groups do: [:group | (m childCountInGroup: group) in: [:groupSize |
					listIndex <= (offset + groupSize)
						ifTrue: [^ m childAt: listIndex - offset inGroup: group]
						ifFalse: [offset := offset + groupSize]]]]].
	^ nil