accessing
recentMethods

	^ RecentMethods ifNil: [RecentMethods := ViRecentlyUsedHistory new limit: 20].