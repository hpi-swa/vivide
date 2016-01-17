initialization - scripts
addPaneHierarchy

	self addScript: {
		[:pane | pane] -> {
			#label -> 'Pane Hierarchy'.
			#inputKind -> ViPane.
			#id -> #paneHierarchy}.
		[:pane | {
			#text -> pane printString. 
			#selectedLater -> [[pane addHalo]] }].
		[:pane | {pane currentQuery. pane view}].
		[:scriptOrView | {
			#text -> scriptOrView printString.
			#selectedLater -> [ [scriptOrView isMorph ifTrue: [scriptOrView addHalo]] ]
		}].
		[:object | (object isKindOf: ViMultiPaneWidget)
			ifTrue: [object panes]
			ifFalse: [#()]].
		[:panes | panes sortBy: [:p1 :p2 | p1 topLeft <= p2 topLeft]].
		2
	} asScript.