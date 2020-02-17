tests
test08MultiPaneToPane
	
	editor unwrapPaneFromMultiPaneWidget.
	
	self assert: editor pane == pane.
	self assert: pane script isMeta not.