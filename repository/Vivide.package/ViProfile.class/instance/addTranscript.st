initialization - bookmarks
addTranscript

	self addScript: {
		[VivideLight historyFor: #transcript] -> {
			#id -> #transcript.
			#label -> 'Transcript'.
			#isGlobal -> true.
			#priority -> 500.
			#icon -> ViIcons icons8BulletedList64px2Icon.
			#view -> ViTextView.
			#scrollToBottom -> true.
			#notifier -> [ViObjectHistoryNotifier new
				history: (VivideLight historyFor: #transcript)]}.
		 [:history | history objects].
		 [:entry | #text -> ('[', entry key time print24, '] ', entry value)]
	} asScript.