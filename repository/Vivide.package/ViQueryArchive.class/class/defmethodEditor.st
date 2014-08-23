definitions
defmethodEditor
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 August 2014 2:22:59 pm'); yourself)); add: (#id->#methodEditor); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #methodEditor ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViMethodEditor.
			v setProperty: #viewId toValue: #methodEditor.
			"v objectsAsContext: true."
			
			"self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #methodEditor ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViMethodEditor.
			v setProperty: #viewId toValue: #methodEditor.
			"v objectsAsContext: true."
			
			"self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]'); yourself)