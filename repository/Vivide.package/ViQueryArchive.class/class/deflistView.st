definitions
deflistView
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 February 2014 5:48:21 pm'); yourself)); add: (#id->#listView); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #list ifTrue: [view] ifFalse: [
		ViStandardItemView newList in: [:v |
			v setProperty: #viewId toValue: #tree.
		
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].
			
	newView updateForListForQuery: query.
	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #list ifTrue: [view] ifFalse: [
		ViStandardItemView newList in: [:v |
			v setProperty: #viewId toValue: #tree.
		
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].
			
	newView updateForListForQuery: query.
	newView]'); yourself)