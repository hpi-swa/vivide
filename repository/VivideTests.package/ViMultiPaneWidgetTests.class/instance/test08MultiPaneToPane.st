tests
test08MultiPaneToPane
	
	editor unwrapPaneFromMultiPaneWidget.
	
	self assert: editor pane == pane.
	self assert: pane currentQuery isMeta not.