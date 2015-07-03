properties
setProperty: property toValue: value

	(#(icon id label isProperty isReference) includes: property)
		ifTrue: [^ self perform: (property, #:) asSymbol with: value].  

	property = #async
		ifTrue: [^ self isExecutedAsynchronously: value].
		
	^ super setProperty: property toValue: value