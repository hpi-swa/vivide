actions - debugging
exploreOutputTrace

	| result |
	result := OrderedDictionary new.

	(self interpretUpToDetect: [:step :interpreter |
		result
			at: step
			put: {interpreter objects copy. interpreter properties copy}.
		step = self thisStep])
			in: [:interpreter |
				result
					at: #output
					put: {interpreter objects copy. interpreter properties copy}].
		
	result explore.