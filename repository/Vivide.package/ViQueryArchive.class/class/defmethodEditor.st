definitions
defmethodEditor
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryViewDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'23 August 2014 2:22:59 pm'); yourself)); add: (#id->#methodEditor); add: (#block->[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #methodEditor ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViMethodEditor.
			v setProperty: #viewId toValue: #methodEditor.
			
			v setupBlock: [:model :container |
				model nodes
					ifEmpty: [
						container object: nil.
						container artifact model bindings: nil]
					ifNotEmpty: [:nodes |
						container object: (nodes first at: #object).
						(nodes first includesKey: #'1_context') ifTrue: [
							container artifact model doItContext: (nodes first at: #'1_context')].
						(nodes first includesKey: #'1_receiver') ifTrue: [
							container artifact model doItReceiver: (nodes first at: #'1_receiver')].
						(nodes first includesKey: #'1_self') ifTrue: [
							container artifact model doItReceiver: (nodes first at: #'1_self')].
						(nodes first at: #'1_bindings' ifAbsent: [Dictionary new]) in: [:bindings |
							(bindings includesKey: #self)
								ifTrue: [container artifact model doItReceiver: (bindings at: #self)].
							"Others."
							container artifact model bindings: bindings].
						]].
			
			"self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]); add: (#sourceCode->'[:query :view :environment | | newView |
	newView := (view valueOfProperty: #viewId) = #methodEditor ifTrue: [view] ifFalse: [
		ViArtifactView new in: [:v |
			v initializeForContainerClass: ViMethodEditor.
			v setProperty: #viewId toValue: #methodEditor.
			
			v setupBlock: [:model :container |
				model nodes
					ifEmpty: [
						container object: nil.
						container artifact model bindings: nil]
					ifNotEmpty: [:nodes |
						container object: (nodes first at: #object).
						(nodes first includesKey: #''1_context'') ifTrue: [
							container artifact model doItContext: (nodes first at: #''1_context'')].
						(nodes first includesKey: #''1_receiver'') ifTrue: [
							container artifact model doItReceiver: (nodes first at: #''1_receiver'')].
						(nodes first includesKey: #''1_self'') ifTrue: [
							container artifact model doItReceiver: (nodes first at: #''1_self'')].
						(nodes first at: #''1_bindings'' ifAbsent: [Dictionary new]) in: [:bindings |
							(bindings includesKey: #self)
								ifTrue: [container artifact model doItReceiver: (bindings at: #self)].
							"Others."
							container artifact model bindings: bindings].
						]].
			
			"self connect: v signal: #selectionChanged: to: environment selector: #notifyChangedSelection:.
			self connect: v signal: #doubleClicked: to: environment selector: #requestArtifactFor:.
			self connect: v signal: #returnPressed: to: environment selector: #requestArtifactFor:."
			v]].	
	newView]'); yourself)