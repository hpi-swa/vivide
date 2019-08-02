tests - open
test04OpenToolAndScriptEditor
	"Expect two windows to open: One for the tool and one for the script editor."
	
	| toolPane editorPane |
	#(
	(1 2 3)
	( (1 2 3) )
	( (1 2 3) (4 5) )
	) do: [:objects |	
		(vivide scriptArtifacts: objects) in: [:windows |
			toolPane := windows first pane.
			editorPane := windows second pane].
	
		self
			assert: objects equals: toolPane objects;
			assert: (editorPane objects includes: objects);
			assert: (editorPane objects includes: toolPane script);
			assert: (editorPane objects includes: toolPane objects)].