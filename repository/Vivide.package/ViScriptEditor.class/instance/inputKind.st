accessing - script
inputKind
	"Either use script property or derive from editor input."
	
	^ (self thisStep valueOfProperty: #inputKind)
		ifNotNil: [:spec | spec asList]
		 ifNil: [
			(ViQueryStepDefinition
				collectBaseClassesForContext: self input
				withTuples: (self input allSatisfy: #isList)) in: [:tmp |
					tmp first isBehavior
						ifTrue: [{tmp first}]
						ifFalse: [tmp collect: [:someClasses | someClasses first]]] ]