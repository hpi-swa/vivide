accessing
recentClasses

	^ RecentClasses ifNil: [RecentClasses := ViRecentlyUsedHistory new limit: 5].