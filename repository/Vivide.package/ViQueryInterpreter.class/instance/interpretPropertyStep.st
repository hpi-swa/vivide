deprecated
interpretPropertyStep

	self assert: self currentStep isPropertyStep.
	
	objects keysAndValuesDo: [:group :groupedObjects |
		(step process: groupedObjects) in: [:newProperties |
			(properties
				at: group
				ifAbsentPut: [OrderedCollection new]) add: (
			"Add object references to properties. Assume 1:1 mapping."
			newProperties withIndexCollect: [:p :i | | o |
				o := groupedObjects at: i. "1:1 mapping"
				((ViQueryInterpreter isCollection: o) and: [o notEmpty])
					ifFalse: [p, {#object -> o}]
					ifTrue: [p, {#object -> o first. #objects -> o}]]
			) ]].