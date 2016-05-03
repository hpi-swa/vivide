as yet unclassified
adoptPaneColor: color

	super adoptPaneColor: color.
	
	"self searchEdit color: color.
	self currentQueryView color: color."
	self currentQueryView verticalScrollBar buttonColor: color.
	self currentQueryView horizontalScrollBar buttonColor: color.
	"self currentSearchView color: color."
	self currentSearchView verticalScrollBar buttonColor: color.
	self currentSearchView horizontalScrollBar buttonColor: color.