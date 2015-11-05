as yet unclassified
example

	(ViContactCard contactsFrom: 'C:\_extern\_contacts\contacts.vcf')
		select: [:contact | contact hasTelefone]
		thenDo: [:contact |
			contact convertVersion.
			contact exportInto: 'C:\_extern\_contacts\all'].