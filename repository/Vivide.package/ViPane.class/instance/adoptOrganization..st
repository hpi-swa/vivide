as yet unclassified
adoptOrganization: aQueryOrganizer
	"Let all known scripts use the given organizer. We convert all scripts that are in the same organization as the current one."
	
	self recentQueries
		select: [:query | query organization == self currentQuery organization]
		thenDo: [:query | query adoptOrganization: aQueryOrganizer].
	
	self flag: #refactor. "mt: self currentQuery isMeta does the same check..."
	(self view isKindOf: ViMultiPaneWidget) ifTrue: [
		self view adoptOrganization: aQueryOrganizer].