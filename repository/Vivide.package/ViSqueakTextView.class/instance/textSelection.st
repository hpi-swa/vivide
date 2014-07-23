as yet unclassified
textSelection

	self model ifNotNil: [:m |
		m groups do: [:group |
			1 to: (m childCountInGroup: group) do: [:idx |
				^ (m childAt: idx inGroup: group) at: #'1_selection' ifAbsent: [1 to: 0]]]].
	^ 1 to: 0