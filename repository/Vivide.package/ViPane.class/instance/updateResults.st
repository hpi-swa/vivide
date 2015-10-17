updating - results
updateResults
	"Force a re-evaluation of the query."

	self clearError.

	self removeProperty: #lastSelection.
	self model reset.