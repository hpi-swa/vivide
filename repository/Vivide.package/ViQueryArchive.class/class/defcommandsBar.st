definitions
defcommandsBar
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 June 2014 8:59:04 am'); yourself)); add: (#id->#commandsBar); add: (#block->[:query :view :environment |
	(view valueOfProperty: #viewId) = #commands ifTrue: [view] ifFalse: [
		ViCommandsView new
			setProperty: #viewId toValue: #commands;
			yourself]]); add: (#sourceCode->'[:query :view :environment |
	(view valueOfProperty: #viewId) = #commands ifTrue: [view] ifFalse: [
		ViCommandsView new
			setProperty: #viewId toValue: #commands;
			yourself]]'); yourself)