private
resolveReferences

	steps do: [:step | step next; definition].
	commands do: [:cmd | cmd definition].