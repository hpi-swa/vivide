initialization
initializeBasicBookmarks

	ViActiveOrganizer
		value: self organization
		during: [
			self
				addScriptAsBookmark: #workspace asScript;
				addScriptAsBookmark: #transcript asScript;
				addBlockForNewSnippet;
				addBlockForNewClass;
				addBlockForNewMemo].