as yet unclassified
specClassForStep: step

	^ (step valueOfProperty: #view) caseOf: {
		[#text] -> [ViTextViewSpec].
"		[#tree] -> [UiTreeView].
		[#table] -> [UiTableView]"} otherwise: [UiItemViewSimpleColumnSpec]