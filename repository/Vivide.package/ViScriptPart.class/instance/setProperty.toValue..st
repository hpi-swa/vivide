properties
setProperty: property toValue: value

	(#(icon id label isProperty isReference) includes: property)
		ifTrue: [^ self perform: (property, #:) asSymbol with: value].  

	property = #async
		ifTrue: [^ self isExecutedAsynchronously: value].
	
	(property = #inputKind or: [property = #outputKind])
		ifTrue: [^ super setProperty: property toValue: (self normalizedKind: value)].
	
	^ super setProperty: property toValue: value