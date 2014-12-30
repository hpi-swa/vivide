properties
setProperty: property toValue: value

	(#(icon id label isProperty) includes: property)
		ifTrue: [^ self perform: (property, #:) asSymbol with: value].  

	property = #async
		ifTrue: [^ self isExecutedAsynchronously: value].

	self flag: #refactor. "mt: Maybe like #isExecutedAsynchronously."
	property = #view
		ifTrue: [(self valueOfProperty: #view) in: [:oldView |  
			super setProperty: property toValue: value.
			self notifier
				stepViewDefinitionChanged: self
				from: oldView to: (self valueOfProperty: #view).
			^ self]].
		
	^ super setProperty: property toValue: value