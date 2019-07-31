tests - results
test05KeepSelectedResults
	"Note that this is view specific!"
	
	| pane view |
	pane := ViPane new
		script: { [:num | num] -> { #view -> ViTreeView } } asScript;
		objects: #(1 2 3 4).
		
	self flag: #refactor. "mt: This test depends of UiAbstractitemView interface."
	view := pane view "ViTreeView" currentVisibleView. "UiAbstractitemView"
	
	view selectNone; selectNextRow; selectNextRow.
	self assert: #(2) equals: pane selectedResults.

	pane objects: #(2 1 4 3).
	self assert: #(1) equals: pane selectedResults.

	pane objects: #(3 1 4 2).
	self assert: #(1) equals: pane selectedResults.

	pane objects: #(5 6 7 8).
	self assert: #(6) equals: pane selectedResults.
	
	self flag: #tofix. "Hmm....."