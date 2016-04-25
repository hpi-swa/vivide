updating
process: node

	self contentMorph
		removeAllMorphs;
		addAllMorphs: (node childrenInDefaultGroup collect: [:ea | self createPaneFor: ea]).