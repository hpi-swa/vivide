accessing
recentClasses

	^ recentClasses ifNil: [recentClasses := ViRecentlyUsedHistory new limit: 5]