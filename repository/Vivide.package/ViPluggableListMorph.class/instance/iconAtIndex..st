as yet unclassified
iconAtIndex: anInteger

	(self model childAt: anInteger inGroup: self model groups first) in: [:node |
		^ node at: #icon ifAbsent: [node at: #morph ifAbsent: []]]