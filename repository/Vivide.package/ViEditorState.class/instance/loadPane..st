as yet unclassified
loadPane: pane

	#(bounds objects queries recentQueries) do: [:property |
		pane perform: (property, $:) asSymbol with: (self properties at: property ifAbsent: []) copy].
	pane currentQuery: (self properties at: #currentQuery).
	pane name: (self properties at: #name).