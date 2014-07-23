private
tidyArchive
	"Remove unused code."

	((archive selectors select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #step) notNil])
			copyWithoutAll: (stepSelectors gather: [:assoc | assoc value]))
		do: [:unusedSelector |
			archive removeSelectorSilently: unusedSelector.
			Transcript cr; show: ('[ViQuerySerializer] Obsolete step removed from archive ({1}): {2}' format: {archive.unusedSelector}).].

	((archive selectors select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #command) notNil])
			copyWithoutAll: (commandSelectors gather: [:assoc | assoc value]))
		do: [:unusedSelector |
			archive removeSelectorSilently: unusedSelector.
			Transcript cr; show: ('[ViQuerySerializer] Obsolete command removed from archive ({1}): {2}' format: {archive.unusedSelector}).].

	((archive selectors select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #definition) notNil])
			copyWithoutAll: definitionSelectors)
		do: [:unusedSelector |
			archive removeSelectorSilently: unusedSelector.
			Transcript cr; show: ('[ViQuerySerializer] Obsolete definition removed from archive ({1}): {2}' format: {archive.unusedSelector}).].
	
	archive organization removeEmptyCategories.