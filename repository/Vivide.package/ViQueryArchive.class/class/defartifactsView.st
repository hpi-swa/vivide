definitions
defartifactsView
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'13 February 2014 1:49:37 pm'); yourself)); add: (#id->#artifactsView); add: (#block->[:query :view :environment |
	(view valueOfProperty: #viewId) = #artifacts ifTrue: [view] ifFalse: [
		(ViArtifactListView2 new
			setProperty: #viewId toValue: #artifacts;
			yourself) in: [:v |		
				self connect: v signal: #objectSelectionChanged: to: environment selector: #notifyChangedSelection:.
		v]]]); add: (#sourceCode->'[:query :view :environment |
	(view valueOfProperty: #viewId) = #artifacts ifTrue: [view] ifFalse: [
		(ViArtifactListView2 new
			setProperty: #viewId toValue: #artifacts;
			yourself) in: [:v |		
				self connect: v signal: #objectSelectionChanged: to: environment selector: #notifyChangedSelection:.
		v]]]'); yourself)