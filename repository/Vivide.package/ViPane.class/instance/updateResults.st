updating - results
updateResults
	"Force a re-evaluation of the query."

	self clearError.

	self setProperty: #isUpdating toValue: true.
	self removeProperty: #lastSelection.
	self model reset.
	self removeProperty: #isUpdating. 