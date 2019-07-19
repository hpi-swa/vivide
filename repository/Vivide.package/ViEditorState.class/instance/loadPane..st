loading - editors
loadPane: pane
	
	pane
		bounds: (self properties at: #bounds ifAbsent: []) copy;
		recentScripts: (self properties at: #recentScripts ifAbsent: []) copy;
		script: (self properties at: #script).
	pane beginUpdateChainWith: [:p | p objects: (self properties at: #objects) copy].