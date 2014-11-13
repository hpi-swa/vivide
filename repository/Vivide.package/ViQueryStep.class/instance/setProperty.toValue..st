as yet unclassified
setProperty: property toValue: newValue

	(self valueOfProperty: property) in: [:oldValue |
		oldValue = newValue ifTrue: [^  self].
		
		super setProperty: property toValue: newValue.
		
		self notifier
			stepPropertiesChanged: self
			from: {property -> oldValue}
			to: {property -> newValue}].  