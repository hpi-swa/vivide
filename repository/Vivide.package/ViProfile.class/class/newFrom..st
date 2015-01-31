as yet unclassified
newFrom: anotherProfile
	"Create a new profile and copy information from the given one to ensure its validity."
	| instance |
	instance := self new.
	instance label: 'Copy of ', anotherProfile label.
	self requiredScripts do: [:id |
		(anotherProfile organization stepById: id) in: [:script |
			script copyQuery
				adoptOrganization: instance organization;
				id: id "preserve id in new organization"]].
			
	^ instance