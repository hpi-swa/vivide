as yet unclassified
updateInputKind
	"Try to found out about input objects."

	(self object valueOfProperty: #inputKind ifAbsent: [])
		ifNotNil: [:k | self inputKind: k. ^ self].

	([(self interpretUpToDetect: [:script | script next == self object]) allObjects]
	on: Error do: [#()]) ifNotEmpty: [:objects |
		(ViQueryStepDefinition collectBaseClassesForContext: objects) in: [:tmp |
			self inputKind: (tmp first isBehavior
				ifTrue: [{tmp first}]
				ifFalse: [tmp collect: [:someClasses | someClasses first]])]].