initialization
initializeBasicBookmarks

	ViActiveProfile 
		value: self
		during: [
			self
				addScriptAsBookmark: #workspace asScript;
				addScriptAsBookmark: #transcript asScript;
				addBlockForNewSnippet;
				addBlockForNewClass;
				addBlockForNewMemo].