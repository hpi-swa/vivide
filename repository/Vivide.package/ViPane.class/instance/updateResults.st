updating - results
updateResults
	"Force a re-evaluation of the query."

	self clearError.

	self removeProperty: #lastSelection.
	self script ifNotNil: [self model reset].