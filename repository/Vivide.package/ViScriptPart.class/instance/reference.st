as yet unclassified
reference
	"Only reasonable if the result of the definition is an ID. May require the correct objects. See interpreter."
	
	^ ((self referenceFor: #(1) in: self organization)
		ifNil: [self referenceFor: #(1) in: ViScriptOrganizer active])
		ifNil: [self referenceFor: #(1) in: (ViProfile active ifNotNil: #organization)]