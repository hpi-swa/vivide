as yet unclassified
setProperty: property toValue: value

	property = #view
		ifFalse: [super setProperty: property toValue: value]
		ifTrue: [(self valueOfProperty: #view) in: [:oldView |  
			super setProperty: property toValue: value.
			self notifier
				stepViewDefinitionChanged: self
				from: oldView to: (self valueOfProperty: #view)]]