as yet unclassified
initialize

	super initialize.
	self initializeForContainerClass: ViMethodContextEditor.
	
	self setupBlock: [:model :container |
		model nodes
			ifEmpty: [	container object: nil]
			ifNotEmpty: [:nodes | container object: (nodes first at: #object)	]].
	
	self container sgConnectSignal: #expressionEvaluated: to: self selector: #selectObjects:. 