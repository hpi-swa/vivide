add/remove - operations
addOperations: someConfigurations

	someConfigurations do: [:config |
		self
			addOperation: config first
			label: config second
			icon: config third
			argument: (config size >= 4 ifTrue: [config fourth] ifFalse: [])
			group: (config size >= 5 ifTrue: [config fifth] ifFalse: [#default])].
	self modelReset.