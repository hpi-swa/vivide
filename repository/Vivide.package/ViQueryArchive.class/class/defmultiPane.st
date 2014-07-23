definitions
defmultiPane
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 January 2014 5:08:04 pm'); yourself)); add: (#id->#multiPane); add: (#block->[:query :view :environment | | newView newCols newResizeModes |
	(view valueOfProperty: #viewId) = #multiPane
		ifTrue: [view]
		ifFalse: [
			ViMultiPaneView new in: [:v |
				self connect: v signal: #selectionChanged: to: environment selector: #onView:selectionChanged: pattern: #(0 1).
				self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
				self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
				self connect: v signal: #hovered: to: environment selector: #triggerPreview:.
			v]]]); add: (#sourceCode->'[:query :view :environment | | newView newCols newResizeModes |
	(view valueOfProperty: #viewId) = #multiPane
		ifTrue: [view]
		ifFalse: [
			ViMultiPaneView new in: [:v |
				self connect: v signal: #selectionChanged: to: environment selector: #onView:selectionChanged: pattern: #(0 1).
				self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
				self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:.
				self connect: v signal: #hovered: to: environment selector: #triggerPreview:.
			v]]]'); yourself)