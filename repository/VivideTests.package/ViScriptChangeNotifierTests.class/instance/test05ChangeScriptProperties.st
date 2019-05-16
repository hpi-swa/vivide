tests
test05ChangeScriptProperties

	#(
		(color blue yellow)
		(size 0 54)
		(layout horizontal vertical)
	) do: [:prop |
		script setProperty: prop first toValue: prop second.
		self assert: self lastEvent isPropertiesModified.

		script setProperty: prop first toValue: prop third.
		self
			assert: prop second equals: (self lastEvent oldProperties at: prop first);
			assert: prop third equals: (self lastEvent newProperties at: prop first)].