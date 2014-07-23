accessing
recentPackages

	^ RecentPackages ifNil: [RecentPackages := ViRecentlyUsedHistory new limit: 5].