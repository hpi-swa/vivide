as yet unclassified
propertiesFromList: list

	self flag: #refactor. "mt: Store in extension?"
	list do: [:property |
		self object setProperty: property key toValue: property value].