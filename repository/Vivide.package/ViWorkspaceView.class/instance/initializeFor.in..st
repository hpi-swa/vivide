initialization
initializeFor: aScript in: anEnvironment

	self setProperty: #viewId toValue: self class defaultViewId.     
	self connect: self signal: #selectionChanged: to: anEnvironment selector: #notifyChangedSelection:.
	"---"
	
	self initializeForContainerClass: ViCodeSnippetEditor.
	
	"Use incoming objects as context (=self) for workspace."
	self setupBlock: [:model :container |
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

	self container object: nil. "default snippet"
	
	"Pass evaluated results or text as selection to other panes."
	self container sgConnectSignal: #expressionEvaluated: to: self selector: #selectObjects:.  "objects"
	self connect: self container snippetEdit signal: #editingFinished: toSelector: #selectObjects:. "text"