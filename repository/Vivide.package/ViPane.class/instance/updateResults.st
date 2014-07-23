updating - results
updateResults
	"Force a re-evaluation of the query. Assume no notification about changed selections from the view; manually trigger one."

	self clearError.

	self setProperty: #isUpdating toValue: true. 
	self model updateChildren.
	self removeProperty: #isUpdating. 
	
	self listenersForSelections do: [:msg |
		msg valueWithArguments: {self selectedResults.self}].