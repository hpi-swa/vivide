saving - editors
savePane: pane

	#(objects bounds recentScripts) do: [:property |
		self properties
			at: property
			put: (pane perform: property) copy].
	self properties at: #script put: pane fullScript.