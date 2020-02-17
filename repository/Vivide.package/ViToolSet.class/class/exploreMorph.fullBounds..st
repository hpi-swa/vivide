as yet unclassified
exploreMorph: morph fullBounds: lbl

	({
		[:m | m submorphs] -> { #label -> lbl. #expandAll -> true }.
		[:m | #text -> m printString].
		[:m | #text -> (m instVarNamed: #fullBounds) printString].
		1 
	} asScript openScriptWith: {morph}) pane model allNodes.