as yet unclassified
iconAtIndex: anInteger

	self flag: #workaround.
	
	[
		(self model childAt: anInteger inGroup: self model groups first) in: [:node |
			^ (node at: #icon ifAbsent: [node at: #morph ifAbsent: []]) value "support for ViLazyForm"]
	] on: Error do: [^ nil]