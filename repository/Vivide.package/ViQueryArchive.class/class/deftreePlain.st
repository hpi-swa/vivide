definitions
deftreePlain
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'27 May 2014 2:46:31 pm'); yourself)); add: (#id->#treePlain); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #treePlain ifTrue: [view] ifFalse: [
		ViStandardItemView newTree in: [:v |
			v setProperty: #viewId toValue: #treePlain.
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].
	newView updateForQuery: query.	

	newView hideSearchBar.
	newView hideCommandsBar.

	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #treePlain ifTrue: [view] ifFalse: [
		ViStandardItemView newTree in: [:v |
			v setProperty: #viewId toValue: #treePlain.
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].
	newView updateForQuery: query.	

	newView hideSearchBar.
	newView hideCommandsBar.

	newView]'); yourself)