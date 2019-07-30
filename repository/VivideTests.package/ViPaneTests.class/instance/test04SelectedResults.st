tests - results
test04SelectedResults

	| pane view |
	pane := ViPane new
		script: { [:num | num] -> { #view -> ViTreeView } } asScript;
		objects: #(1 2 3 4).
		
	self flag: #refactor. "mt: This test depends of UiAbstractitemView interface."
	view := pane view "ViTreeView" currentVisibleView. "UiAbstractitemView"
	
	view selectNone.
	self assert: #() equals: pane selectedResults.
	
	view selectNextRow.
	self assert: #(1) equals: pane selectedResults.
	view selectNextRow.
	self assert: #(2) equals: pane selectedResults.
	view selectNextRow.
	self assert: #(3) equals: pane selectedResults.

	view selectAll.
	self assert: #(1 2 3 4) equals: pane selectedResults.