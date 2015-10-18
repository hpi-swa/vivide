private
tidyArchive
	"Remove unused code."

	(archive canUnderstand: #order) ifTrue: [
		archive removeSelectorSilently: #order.
		Transcript showln: ('[ViQuerySerializer] Deprecated order of steps removed from archive ({1}).' format: {archive})].

	(archive canUnderstand: #orderCommands) ifTrue: [
		archive removeSelectorSilently: #orderCommands.
		Transcript showln: ('[ViQuerySerializer] Deprecated order of commands removed from archive ({1}).' format: {archive})].

	((archive selectors select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #step) notNil])
			copyWithoutAll: stepSelectors)
		do: [:unusedSelector |
			archive removeSelectorSilently: unusedSelector.
			Transcript cr; show: ('[ViQuerySerializer] Obsolete step removed from archive ({1}): {2}' format: {archive.unusedSelector}).].

	((archive selectors select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #command) notNil])
			copyWithoutAll: commandSelectors)
		do: [:unusedSelector |
			archive removeSelectorSilently: unusedSelector.
			Transcript cr; show: ('[ViQuerySerializer] Obsolete command removed from archive ({1}): {2}' format: {archive.unusedSelector}).].

	((archive selectors select: [:symbol | ((archive compiledMethodAt: symbol) pragmaAt: #definition) notNil])
			copyWithoutAll: definitionSelectors)
		do: [:unusedSelector |
			archive removeSelectorSilently: unusedSelector.
			Transcript cr; show: ('[ViQuerySerializer] Obsolete definition removed from archive ({1}): {2}' format: {archive.unusedSelector}).].
	
	archive organization removeEmptyCategories.