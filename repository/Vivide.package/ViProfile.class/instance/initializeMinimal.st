initialization
initializeMinimal
	"Order is important because we don't configure explicit priorities here."
	
	self
		addFormattedScripts;
		addClassOutline;
		addPackageOutline;

		addSenders;
		addImplementors;
		addSnippets;

		addGroupsScript;
		addExplorer;
		addDefaultProperties;
		addArtifacts;
		
		addPaneHierarchy.
		"debugger"