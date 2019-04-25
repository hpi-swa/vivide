properties
setProperty: property toValue: newValue

	(self valueOfProperty: property) in: [:oldValue |
		oldValue = newValue ifTrue: [^  self].
		
		super setProperty: property toValue: newValue.
		
		"The #isNew property is for temporary use only."
		self flag: #refactor. "mt: Find another way to store #isNew property?"
		property ~= #isNew ifTrue: [self notifier
			stepPropertiesChanged: self
			from: {property -> oldValue}
			to: {property -> newValue}]].  