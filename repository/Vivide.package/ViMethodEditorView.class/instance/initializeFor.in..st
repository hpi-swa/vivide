initialization
initializeFor: aScript in: anEnvironment

	self setProperty: #viewId toValue: self class defaultViewId.     
	self connect: self signal: #selectionChanged: to: anEnvironment selector: #notifyChangedSelection:.

	"---"

	self initializeForContainerClass: ViMethodEditor.
	
	self setupBlock: [:model :container |
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
	
	self container sgConnectSignal: #expressionEvaluated: to: self selector: #selectObjects:. 