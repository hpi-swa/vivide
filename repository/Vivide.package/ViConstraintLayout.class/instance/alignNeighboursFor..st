private
alignNeighboursFor: someMorphs

	someMorphs do: [:fixed | 
		someMorphs do: [:variable |
			fixed ~~ variable ifTrue: [
				(variable top - fixed top between: 0 and: 15)
					ifTrue: [variable top: fixed top].
				(variable bottom - fixed bottom between: 0 and: 15)
					ifTrue: [variable height: fixed bottom - variable top].

				(variable left - fixed left between: 0 and: 15)
					ifTrue: [variable left: fixed left].
				(variable right - fixed right between: 0 and: 15)
					ifTrue: [variable width: fixed right - variable left].
				].
		]].