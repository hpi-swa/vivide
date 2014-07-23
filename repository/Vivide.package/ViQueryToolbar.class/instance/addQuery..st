as yet unclassified
addQuery: aQuery

	^ self
		addGroup: aQuery label
		icon: (aQuery icon ifNil: [UiFugueIcons documentSmallIcon])
		contents: aQuery
		helpText: nil