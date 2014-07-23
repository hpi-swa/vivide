definitions
deftreeViewExtended
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 September 2013 2:07:07 pm'); yourself)); add: (#id->#treeViewExtended); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #tree ifTrue: [view] ifFalse: [
		ViStandardItemView newTree in: [:v |
			v setProperty: #viewId toValue: #tree.
		
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].
	newView updateForQueryExtended: query.	
	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #tree ifTrue: [view] ifFalse: [
		ViStandardItemView newTree in: [:v |
			v setProperty: #viewId toValue: #tree.
		
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
			v]].
	newView updateForQueryExtended: query.	
	newView]'); yourself)