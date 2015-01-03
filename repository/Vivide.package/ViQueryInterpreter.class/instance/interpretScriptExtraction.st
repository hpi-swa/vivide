interpreting - private
interpretScriptExtraction
	
	"Look for model class for later node creation."
	(step valueOfProperty: #modelClass)
		ifNotNil: [:cls | modelClass := cls].   
	
	objects keysAndValuesDo: [:group :groupedObjects |
		(step process: groupedObjects) in: [:newProperties |
			(properties
				at: group
				ifAbsentPut: [OrderedCollection new]) add: (
					newProperties collect: [:p | p collect: [:pp |  ViScriptPart convertProperty: pp] ]
			) ]].