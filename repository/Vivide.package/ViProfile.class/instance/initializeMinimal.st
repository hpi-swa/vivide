initialization
initializeMinimal
	
	ViActiveScriptOrganizer
		value: self organization
		during: [
			self
				addTools;
				addObjectTemplates;

				addDefaultProperties;
				addDefaultPropertiesMinimal; "optional"
				addDefaultPropertiesExtended; "quasi optional"
				addArtifacts;
				
				addGroupsMinimalScript; "quasi optional"
				addGroupsScript; "quasi optional"
				
				addExplorer;
				
				addFormattedScripts;
				addClassOutline;
				addPackages; "optional"
				addPackageOutline; "optional"

				addMessageSet;
				addSenders;
				addImplementors;

				addWorkspace; "optional"
				addTranscript; "optional"
								
				addPaneHierarchy;
				addClassHierarchy; "optional"
				addRecoverUnsavedScripts.
				"debugger"].