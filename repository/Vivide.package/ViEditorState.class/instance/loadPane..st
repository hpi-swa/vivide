loading - editors
loadPane: pane

	#(bounds queries recentQueries) do: [:property |
		pane perform: (property, $:) asSymbol with: (self properties at: property ifAbsent: []) copy].
	pane currentQuery: (self properties at: #currentQuery).
	pane beginUpdateChainWith: [:p | p objects: (self properties at: #objects) copy].