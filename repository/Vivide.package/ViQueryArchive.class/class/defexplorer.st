definitions
defexplorer
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 July 2014 9:19:28 am'); yourself)); add: (#id->#explorer); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #explorer ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViObjectEditor.
			v setProperty: #viewId toValue: #explorer.
		
			"self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #explorer ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViObjectEditor.
			v setProperty: #viewId toValue: #explorer.
		
			"self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]'); yourself)