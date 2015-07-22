accessing - history
recentMethods

	^ recentMethods ifNil: [recentMethods := ViRecentlyUsedHistory new limit: 20]