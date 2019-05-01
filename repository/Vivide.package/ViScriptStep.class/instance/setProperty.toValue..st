properties
setProperty: property toValue: newValue
	"Use accessors if possible."

	(#(icon id label isProperty isReference) includes: property)
		ifTrue: [^ self perform: (property, #:) asSymbol with: newValue].  

	property = #async
		ifTrue: [^ self isExecutedAsynchronously: newValue].
	
	(self valueOfProperty: property) in: [:oldValue |	
		oldValue = newValue ifTrue: [^  self].
		
		"Normalize #inputKind and #outputKind."
		(property = #inputKind or: [property = #outputKind])
			ifTrue: [super setProperty: property toValue: (self normalizedKind: newValue)]
			ifFalse: [
				"Normalize #before and #after."
				(property = #before or: [property = #after])
					ifTrue: [super setProperty: property toValue: 
							(newValue asList collect: [:each | each isScript ifFalse: [each] ifTrue: [each id]])]
					ifFalse: [super setProperty: property toValue: newValue]].
			
		"The #isNew property is for temporary use only."
		self flag: #refactor. "mt: Find another way to store #isNew property?"
		property ~= #isNew ifTrue: [self notifier
			stepPropertiesChanged: self
			from: {property -> oldValue}
			to: {property -> newValue}]].  