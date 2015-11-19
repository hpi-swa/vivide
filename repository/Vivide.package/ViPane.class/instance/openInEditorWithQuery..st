initialization - pop-up
openInEditorWithQuery: script
	"Open freshly."
	
	LastHelperPane := nil.
	self recentQueries removeAll.
	self currentQuery: script.
	^ self openInEditor