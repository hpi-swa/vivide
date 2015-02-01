initialization - bookmarks
addTranscript

	self addScriptAsBookmark: {
		[ViProfile active transcriptHistory] -> {
			#label -> 'Transcript'.
			#icon -> UiFugueIcons applicationTextIcon.
			#view -> ViTextView}.
		 [:history | history objects].
		 [:entry | #text -> (entry key, ' ', entry value)]
	} asScript.