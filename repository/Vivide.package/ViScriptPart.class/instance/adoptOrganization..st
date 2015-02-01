as yet unclassified
adoptOrganization: aQueryOrganizer
	"Take my definition with me."

	self isMeta ifTrue: [
		self metaReferences do: [:metaScript | metaScript adoptOrganization: aQueryOrganizer]].

	super adoptOrganization: aQueryOrganizer.
	self definition adoptOrganization: aQueryOrganizer.