initialization - pop-up
openInEditorWithQuery: script
	"Open freshly."
	
	LastHelperPane := nil.
	self recentQueries removeAll.
	
	self currentQuery: script.
	self queries: [script organization orderedSteps].
	
	^ self openInEditor