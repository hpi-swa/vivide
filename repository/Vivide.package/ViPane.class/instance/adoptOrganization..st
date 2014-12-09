as yet unclassified
adoptOrganization: aQueryOrganizer
	"Let all known scripts use the given organizer."
	
	self flag: #todo. "mt: recent queries, other queries, ..."
	{self currentQuery}
		select: [:query | query notNil]
		thenDo: [:query | query adoptOrganization: aQueryOrganizer].