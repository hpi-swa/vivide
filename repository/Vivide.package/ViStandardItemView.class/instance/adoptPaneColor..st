as yet unclassified
adoptPaneColor: color

	super adoptPaneColor: color.
	
	"self searchEdit color: color.
	self currentQueryView color: color."
	self currentQueryView verticalScrollBar buttonColor: color.
	"self currentSearchView color: color."
	self currentSearchView verticalScrollBar buttonColor: color.