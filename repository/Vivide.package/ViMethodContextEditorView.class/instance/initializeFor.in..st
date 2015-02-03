as yet unclassified
initializeFor: aScript in: anEnvironment

	self setProperty: #viewId toValue: self class defaultViewId.     
	self connect: self signal: #selectionChanged: to: anEnvironment selector: #notifyChangedSelection:.

	"---"

	self initializeForContainerClass: ViMethodContextEditor.
	
	self setupBlock: [:model :container |
		model nodes
			ifEmpty: [	container object: nil]
			ifNotEmpty: [:nodes | container object: (nodes first at: #object)	]].
	
	self container sgConnectSignal: #expressionEvaluated: to: self selector: #selectObjects:. 