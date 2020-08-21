actions
closeAllWindows

	self panes
		select: [:pane | pane hasUnacceptedChanges not]
		thenDo: [:pane | pane close].
		
"	ViArtifactToolbar hideAllToolbars."