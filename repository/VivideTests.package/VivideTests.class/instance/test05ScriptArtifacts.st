tests
test05ScriptArtifacts
	"Expect two windows to open: One for the tool and one for the script editor."
	
	| toolWnd editorWnd pane scriptEditor scriptInput |
	#(
	(1 2 3)
	( (1 2 3) )
	( (1 2 3) (4 5) )
	) do: [:objects |	
		(vivide scriptArtifacts: objects) in: [:windows |
			toolWnd := windows first.
			editorWnd := windows second].
	
		pane := toolWnd editor pane.
		scriptEditor := editorWnd editor pane view artifactContainers second.
		scriptInput := editorWnd editor pane view artifactContainers first object.
	
		self assert: pane currentQuery == scriptEditor object.
		self assert: (scriptInput hasEqualElements: pane objects).
		self assert: {SmallInteger} equals: scriptEditor inputKind.
	].