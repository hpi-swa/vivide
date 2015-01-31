accessing
recentMethods

	^ recentMethods ifNil: [recentMethods := ViRecentlyUsedHistory new limit: 20]