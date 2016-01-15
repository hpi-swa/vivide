initialization - bookmarks
addTranscript

	self addScriptAsBookmark: {
		[ViProfile active transcriptHistory] -> {
			#label -> 'Transcript'.
			#icon -> UiFugueIcons applicationTextIcon.
			#view -> ViTextView.
			#scrollToBottom -> true.
			#notifier -> [ViObjectHistoryNotifier new
				history: ViProfile active transcriptHistory]}.
		 [:history | history objects].
		 [:entry | #text -> ('[', entry key time print24, '] ', entry value)]
	} asScript.