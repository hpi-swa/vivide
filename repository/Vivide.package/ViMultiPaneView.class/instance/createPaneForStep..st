as yet unclassified
createPaneForStep: step

	^ (step valueOfProperty: #view) caseOf: {
		[#text] -> [self createTextPane].
"		[#tree] -> [UiTreeView].
		[#table] -> [UiTableView]"} otherwise: [self createListPane]