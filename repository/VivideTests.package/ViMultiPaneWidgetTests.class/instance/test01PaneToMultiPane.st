tests
test01PaneToMultiPane
	
	self assert: editor pane ~~ pane. "We got a new pane."
	self assert: (sut isKindOf: ViMultiPaneWidget).
	self assert: sut panes first == pane.

	self assert: self metaScript isMeta.
	self assert: self metaScript metaReference == pane currentQuery.
	self assert: self metaScript organization == pane currentQuery organization.

	"The first pane gets input and gives output to the surrounding multipane widget."
	self assert: 2 equals: pane connections size.
	self assert: 2 equals: sut connections size.