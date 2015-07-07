initialization
initializeMinimal
	"Order is important because we don't configure explicit priorities here."
	
	ViActiveOrganizer
		value: self organization
		during: [
			self
				addDefaultProperties;
				addArtifacts;

				addGroupsScript;
				addExplorer;
				
				addFormattedScripts;
				addClassOutline;
				addPackageOutline;

				addSenders;
				addImplementors;
				addSnippets;
								
				addPaneHierarchy.
				"debugger"].