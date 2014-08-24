definitions
defworkspace
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 July 2014 1:04:17 pm'); yourself)); add: (#id->#workspace); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #workspace ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViCodeSnippetEditor.
			v setProperty: #viewId toValue: #workspace.
			
			"Use incoming objects as context (=self) for workspace."
			v setupBlock: [:model :container |
				model objects in: [:objects |
					container context: (objects size = 1
						ifTrue: [objects first]
						ifFalse: [objects])].
				model nodes
					ifEmpty: [container snippetEdit model bindings: nil]
					ifNotEmpty: [:nodes |
						(nodes first at: #'1_bindings' ifAbsent: [Dictionary new]) in: [:bindings |
							container snippetEdit model bindings: bindings]]
			].
		
			v container object: nil. "default snippet"
			
			"Pass evaluated results or text as selection to other panes."
			v container sgConnectSignal: #expressionEvaluated: to: v selector: #selectObjects:.  "objects"
			self connect: v container snippetEdit signal: #editingFinished: to: v selector: #selectObjects:. "text"
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			
			"self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #workspace ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViCodeSnippetEditor.
			v setProperty: #viewId toValue: #workspace.
			
			"Use incoming objects as context (=self) for workspace."
			v setupBlock: [:model :container |
				model objects in: [:objects |
					container context: (objects size = 1
						ifTrue: [objects first]
						ifFalse: [objects])].
				model nodes
					ifEmpty: [container snippetEdit model bindings: nil]
					ifNotEmpty: [:nodes |
						(nodes first at: #''1_bindings'' ifAbsent: [Dictionary new]) in: [:bindings |
							container snippetEdit model bindings: bindings]]
			].
		
			v container object: nil. "default snippet"
			
			"Pass evaluated results or text as selection to other panes."
			v container sgConnectSignal: #expressionEvaluated: to: v selector: #selectObjects:.  "objects"
			self connect: v container snippetEdit signal: #editingFinished: to: v selector: #selectObjects:. "text"
			self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			
			"self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]'); yourself)