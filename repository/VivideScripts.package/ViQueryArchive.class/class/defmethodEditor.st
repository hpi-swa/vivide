definitions
defmethodEditor
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 August 2014 2:22:59 pm'); yourself)); add: (#id->#methodEditor); add: (#block->[:query :view :environment |
	ViMethodEditorView createFor: query orUpdate: view in: environment]); add: (#sourceCode->'[:query :view :environment |
	ViMethodEditorView createFor: query orUpdate: view in: environment]'); yourself)