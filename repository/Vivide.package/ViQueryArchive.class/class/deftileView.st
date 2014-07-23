definitions
deftileView
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#id->#tileView); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #tileView ifTrue: [view] ifFalse: [
		ViStandardItemView newList in: [:v |
			v setProperty: #viewId toValue: #tileView.

			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].

	newView updateForTilesForQuery: query.									
	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #tileView ifTrue: [view] ifFalse: [
		ViStandardItemView newList in: [:v |
			v setProperty: #viewId toValue: #tileView.

			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].

	newView updateForTilesForQuery: query.									
	newView]'); yourself)