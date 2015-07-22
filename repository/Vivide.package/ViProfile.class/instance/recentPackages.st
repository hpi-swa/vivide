accessing - history
recentPackages

	^ recentPackages ifNil: [recentPackages := ViRecentlyUsedHistory new limit: 5]