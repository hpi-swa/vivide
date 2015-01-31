accessing
recentPackages

	^ recentPackages ifNil: [recentPackages := ViRecentlyUsedHistory new limit: 5]