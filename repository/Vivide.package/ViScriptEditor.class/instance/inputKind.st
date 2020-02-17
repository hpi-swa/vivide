accessing - script
inputKind
	"Either use script property or derive from editor input."
	
	"1) Favor script properties over dynamic computation. For tuple information - e.g., #(nil nil) - check whether there are actual kinds configured or just nils. Use nils only if this editors input is empty."
	(self thisStep valueOfProperty: #inputKind)
		ifNotNil: [:spec | ((spec asList allSatisfy: #notNil) or: [self input isEmpty])
			ifTrue: [^ spec asList]].
		
	"2) Collect base classes from input."
	^ (ViScriptDefinition
		collectBaseClassesForContext: self input
		withTuples: (self input allSatisfy: #isList)) in: [:tmp |
			tmp first isBehavior
				ifTrue: [{tmp first}]
				ifFalse: [tmp collect: [:someClasses | someClasses first]]]