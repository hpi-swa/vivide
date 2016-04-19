initialization
initializeMinimal
	"Order is important because we don't configure explicit priorities here."
	
	ViActiveOrganizer
		value: self organization
		during: [
			self
				addDefaultProperties;
				addDefaultPropertiesMinimal; "optional"
				addDefaultPropertiesExtended; "quasi optional"
				addArtifacts;
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