as yet unclassified
savePane: pane

	#(objects queries bounds recentQueries) do: [:property |
		self properties
			at: property
			put: (pane perform: property) copy].
	self properties at: #currentQuery put: pane currentQuery.
	self properties at: #name put: pane knownName.