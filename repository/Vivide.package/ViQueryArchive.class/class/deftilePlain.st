definitions
deftilePlain
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 July 2014 1:30:45 pm'); yourself)); add: (#id->#tilePlain); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #tilePlain ifTrue: [view] ifFalse: [
		ViStandardItemView newList in: [:v |
			v setProperty: #viewId toValue: #tilePlain.
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].
	newView updateForTilesForQuery: query.	

	newView hideSearchBar.
	newView hideCommandsBar.

	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #tilePlain ifTrue: [view] ifFalse: [
		ViStandardItemView newList in: [:v |
			v setProperty: #viewId toValue: #tilePlain.
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].
	newView updateForTilesForQuery: query.	

	newView hideSearchBar.
	newView hideCommandsBar.

	newView]'); yourself)