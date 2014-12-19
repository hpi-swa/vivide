loading - editors
loadPane: pane

	#(bounds objects queries recentQueries) do: [:property |
		pane perform: (property, $:) asSymbol with: (self properties at: property ifAbsent: []) copy].
	pane currentQuery: (self properties at: #currentQuery).