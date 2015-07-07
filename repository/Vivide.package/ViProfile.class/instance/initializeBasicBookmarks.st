initialization
initializeBasicBookmarks

	ViActiveOrganizer
		value: self organization
		during: [
			self
				addWorkspace;
				addTranscript;
				addBlockForNewSnippet;
				addBlockForNewClass;
				addBlockForNewMemo].