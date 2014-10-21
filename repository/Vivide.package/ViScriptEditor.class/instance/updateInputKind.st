as yet unclassified
updateInputKind
	"Try to found out about input objects."

	"Try to determine the kind of objects that are put into."
	([(self interpretUpToDetect: [:script | script next == self object]) allObjects]
	on: Error do: [#()]) ifNotEmpty: [:objects |
		(ViQueryStepDefinition collectBaseClassesForContext: objects) in: [:tmp |
			self inputKind: (tmp first isBehavior
				ifTrue: [{tmp first}]
				ifFalse: [tmp collect: [:someClasses | someClasses first]])]].