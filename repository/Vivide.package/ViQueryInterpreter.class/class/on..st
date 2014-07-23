instance creation
on: aQueryStep

	^ self new
		firstStep: aQueryStep
		objects: (Dictionary new at: #all put: #(); yourself)
		groups: #(all)
		contexts: (Dictionary new at: #all put: ViQueryContext new; yourself)
		stack: Stack new