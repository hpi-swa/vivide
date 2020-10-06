graph
keystroke: evt on: container

	evt keyCharacter = Character delete
		ifTrue: [
			(self selectedItemsOn: container) do: [:morph |
				(morph valueOfProperty: #node) in: [:node |
					(node at: #deletePressed ifAbsent: [[]]) cull: (node at: #object)]]].