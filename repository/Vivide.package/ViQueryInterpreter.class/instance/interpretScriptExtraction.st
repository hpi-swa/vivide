as yet unclassified
interpretScriptExtraction

	numProperties := numProperties + 1.
	
	"Look for model class for later node creation."
	[step valueOfProperty: #modelClass]
		ifNotNil: [:cls | modelClass := cls].   
	
	objects keysAndValuesDo: [:group :groupedObjects |
		(step process: groupedObjects within: (contexts at: group)) in: [:newProperties |
			(properties
				at: group
				ifAbsentPut: [OrderedCollection new]) add: (
					newProperties collect: [:p | step convertProperty: p]
			) ]].