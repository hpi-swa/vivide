definitions
defobjectEditor
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'25 August 2014 11:08:49 am'); yourself)); add: (#id->#objectEditor); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #objectEditor ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViObjectEditor.
			v setProperty: #viewId toValue: #objectEditor.
			
			v setupBlock: [:model :container |
				model nodes
					ifEmpty: [container object: nil]
					ifNotEmpty: [:nodes | container object: (nodes first at: #object)	]].
			
			self connect: v container contentTree signal: #selectionChanged: to: v selector: #selectionChanged:.
			
			"self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #objectEditor ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViObjectEditor.
			v setProperty: #viewId toValue: #objectEditor.
			
			v setupBlock: [:model :container |
				model nodes
					ifEmpty: [container object: nil]
					ifNotEmpty: [:nodes | container object: (nodes first at: #object)	]].
			
			self connect: v container contentTree signal: #selectionChanged: to: v selector: #selectionChanged:.
			
			"self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]'); yourself)