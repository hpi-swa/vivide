as yet unclassified
list
	^ self model
		ifNil: [#()]
		ifNotNil: [:m | Array streamContents: [:result | m groups do: [:group | 1 to: (m childCountInGroup: group) do: [:idx |
			result nextPut: ((m childAt: idx inGroup: group) at: #'1_text') asString]]]].