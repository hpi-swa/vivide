definitions
deftableView
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 7:57:24 pm'); yourself)); add: (#id->#tableView); add: (#block->[:query :view :environment | | newView newCols newResizeModes |
	newView := (view valueOfProperty: #viewId) = #table ifTrue: [view] ifFalse: [
		ViStandardItemView newTable in: [:v |
			v setProperty: #viewId toValue: #table.

			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].

	newView updateForQuery: query.
	newView]); add: (#sourceCode->'[:query :view :environment | | newView newCols newResizeModes |
	newView := (view valueOfProperty: #viewId) = #table ifTrue: [view] ifFalse: [
		ViStandardItemView newTable in: [:v |
			v setProperty: #viewId toValue: #table.

			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].

	newView updateForQuery: query.
	newView]'); yourself)