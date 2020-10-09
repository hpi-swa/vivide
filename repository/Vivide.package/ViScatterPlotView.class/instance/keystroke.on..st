graph
keystroke: evt on: container

	(evt keyCharacter = Character delete
		or: [evt keyCharacter = Character backspace]) ifTrue: [
			(self selectedItemsOn: container) do: [:morph |
				(morph valueOfProperty: #node) in: [:node |
					self flag: #aggregation. "Support aggregation via #objects."
					node inputForChildren do: [:object |
						(node at: #deletePressed ifAbsent: [[]]) cull: object]]]].