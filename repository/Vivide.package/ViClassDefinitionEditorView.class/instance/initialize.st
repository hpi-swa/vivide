as yet unclassified
initialize

	super initialize.
	self initializeForContainerClass: ViClassDefinitionEditor.

	self setupBlock: [:model :container |
		container object: (model nodes ifEmpty: [nil] ifNotEmpty: [:nodes | nodes first at: #object])].

	self container sgConnectSignal: #expressionEvaluated: to: self selector: #selectObjects:.