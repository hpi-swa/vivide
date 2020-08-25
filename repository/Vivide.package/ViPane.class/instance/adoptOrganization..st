as yet unclassified
adoptOrganization: aScriptOrganizer
	"Let all known scripts use the given organizer. We convert all scripts that are in the same organization as the current one."
	
	self recentScripts
		select: [:recentScript | recentScript organization = self script organization]
		thenDo: [:recentScript | recentScript adoptOrganization: aScriptOrganizer].