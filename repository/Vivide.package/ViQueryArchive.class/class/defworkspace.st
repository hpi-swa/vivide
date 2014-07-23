definitions
defworkspace
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 July 2014 1:04:17 pm'); yourself)); add: (#id->#workspace); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #workspace ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViCodeSnippetEditor.
			v setProperty: #viewId toValue: #workspace.
			v objectsAsContext: true.
			
			"self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #workspace ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViCodeSnippetEditor.
			v setProperty: #viewId toValue: #workspace.
			v objectsAsContext: true.
			
			"self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]'); yourself)