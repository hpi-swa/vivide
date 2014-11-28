as yet unclassified
doPane: aPane

	| scriptsSummary objectsSummary |
	(aPane view isKindOf: ViMultiPaneWidget)
		ifFalse: [^ (ViLabelService doObject: aPane currentQuery) asString].  
	
	^ (((((aPane view panes)
		"1) Approximate dataflow with geometry."
		sorted: [:pane1 :pane2 | pane1 topLeft <= pane2 topLeft])
		"2) Skip panes that do not have any query and thus do not participate in the tool"
		select: [:pane | pane currentQuery notNil])
		"3) Collect descriptive labels for the panes."
		collect: [:pane | '(', (self doPane: pane), ')'])
		"4) Reduce all into a one-liner."
		ifEmpty: [#('')])
		reduce: [:oneliner :label | oneliner, ' > ', label]