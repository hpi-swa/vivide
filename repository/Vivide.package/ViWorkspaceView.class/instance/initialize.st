as yet unclassified
initialize

	super initialize.

	self initializeForContainerClass: ViCodeSnippetEditor.
	
	"Use incoming objects as context (=self) for workspace."
	self setupBlock: [:model :container |
		model objects in: [:objects |
			container context: (objects size = 1
				ifTrue: [objects first]
				ifFalse: [objects])].
		container snippetEdit model bindings ifNil: [
			container snippetEdit model bindings: Dictionary new].
		"Update bindings. Do not delete old ones."
		model nodes ifNotEmpty: [:nodes |
			(nodes first at: #'1_bindings' ifAbsent: [Dictionary new]) in: [:newBindings |
				newBindings associationsDo: [:ass | container snippetEdit model bindings add: ass]]].

		"Try to evaluate the last expression again."
		self evaluateLastExpression.
	].

	self container object: nil. "default snippet"
	
	"Pass evaluated results or text as selection to other panes."
	self container sgConnectSignal: #expressionAboutToBeEvaluated: to: self selector: #lastExpression:.  "code"
	self container sgConnectSignal: #expressionEvaluated: to: self selector: #selectObjects:.  "objects"
	self connect: self container snippetEdit signal: #editingFinished: toSelector: #selectObjects:. "text"