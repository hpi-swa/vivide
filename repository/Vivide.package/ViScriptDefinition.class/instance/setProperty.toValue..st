properties
setProperty: property toValue: newValue

	(self valueOfProperty: property) in: [:oldValue |
		oldValue = newValue ifTrue: [^  self].
		
		super setProperty: property toValue: newValue.
		
		self notifier
			definitionPropertiesChanged: self
			from: {property -> oldValue}
			to: {property -> newValue}].  