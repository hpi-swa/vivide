accessing - history
recentClasses

	^ recentClasses ifNil: [recentClasses := ViRecentlyUsedHistory new limit: 5]