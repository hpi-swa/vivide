converting
convertFromCollection: someObjects
	"Default scripts will be wrapped as reference. Numbers can be used to refer to locally defined scripts and, for example, describe recursive structures."

	| steps |
	steps := someObjects collect: [:each |
		((each isNumber or: [each isSymbol])
			ifTrue: [each -> { "No extra script properties." }]
			ifFalse: [each]) asScript].
	
	[steps allSatisfy: #isScript] whileFalse: [
		"1) Resolve numbers with local references."
		steps := steps collect: [:step |
			step isScript ifTrue: [step] ifFalse: [
				"Can only be association from number to properties, e.g., '1 -> {...}'"
				(steps at: step key) in: [:target |
					target isScript
						ifTrue: [target asReference -> step value]
						ifFalse: [step "Try again next round."]
						]]].

		"2) Convert associations into scripts w/ script properties set."
		steps := steps collect: [:each | each asScript].
	].
			
	"It is very important to give all script parts the same organization."
	steps do: [:step | step adoptOrganization: steps first organization].
			
	steps first notifier doSilently: [
		steps overlappingPairsDo: [:s1 :s2 | s1 next: s2]].
						
	^ steps first