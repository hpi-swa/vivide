as yet unclassified
hardcodedScriptIds
	"Returns a list of all script ids that are directly referenced in Smalltalk code. This means that a profile's organization must provide some scripts that match those ids. Otherwise Vivide cannot work properly.
	
	Hardcoding script ids is necessary to invoke some expected/default behavior in the environment. For example, there has to be a way to browse senders or implementors of a symbol. Then, the contents of classes and packages are of importance, too. Otherwise, the programmer cannot find the places where to write some new code.
	
	Excluding code in test classes and ViProfile class.
	
	self hardcodedScriptIds."
	
	| scriptSelectors scriptIds |
	scriptSelectors := OrderedCollection new.
	ViAbstractQueryPart withAllSubclassesDo: [:cls |
		#(asScript openScript) in: [:tokens |
			scriptSelectors addAll: (cls selectors select: [:symbol |
				tokens anySatisfy: [:token |
					symbol includesSubstring: token caseSensitive: false]])]].
	
	"Add constructors for (single-pane) editors."
	scriptSelectors addAll: #(new:for: open:for:).

	scriptIds := IdentitySet new.
	SystemNavigation default allSelectorsAndMethodsDo: [:b :s :method |
		((b isTestClass not and: [b ~~ ViProfile]) and: [method literals includesAnyOf: scriptSelectors]) ifTrue: [
			| ast |
			ast := RBParser parseMethod: method getSource asString.
			ast nodesDo: [:node |
				(((node isMessage "#default asScript"
					and: [scriptSelectors includes: node selector]) "#asScript"
					and: [node receiver isLiteralNode]) "#default"
					and: [node receiver value isSymbol]) "Ignore script strings."
						ifTrue: [scriptIds add: node receiver value].
						
				((((node isMessage "ViSinglePaneEditor new: #artifacts for: someObjects"
					and: [scriptSelectors includes: node selector]) "#new:for:"
					and: [node receiver isVariable]) "ViSinglePaneEditor"
					and: [(Smalltalk at: node receiver token value asSymbol ifAbsent: []) isBehavior])
					and: [node arguments first value isSymbol]) "no temps"
						ifTrue: [scriptIds add: node arguments first value].
	]]].
			
	^ scriptIds sorted