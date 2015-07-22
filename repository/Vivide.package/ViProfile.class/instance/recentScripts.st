accessing - history
recentScripts

	^ recentScripts ifNil: [recentScripts := ViRecentlyUsedHistory new limit: 150]