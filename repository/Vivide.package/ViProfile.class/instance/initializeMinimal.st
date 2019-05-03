initialization
initializeMinimal
	
	ViActiveScriptOrganizer
		value: self organization
		during: [
			self
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

				addSenders;
				addImplementors;

				addWorkspace; "optional"
				addTranscript; "optional"
								
				addPaneHierarchy;
				addClassHierarchy; "optional"
				addRecoverUnsavedScripts.
				"debugger"].