as yet unclassified
text

	| result |
	self model ifNil: [^ ''].
	
	result := Text new.
	self model groups do: [:group |
		1 to: (self model childCountInGroup: group) do: [:idx |
			result
				append: ((self model childAt: idx inGroup: group) at: #'1_text');
				append: String cr]].
	^ result