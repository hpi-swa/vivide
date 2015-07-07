tests
test03ArchiveProperties

	| q q2 |
	q := {[:obj | obj asString] -> {
		#someLabel -> 'Foobar'.
		#aColor -> #AAAAAA.
		#number -> 42.
		#someText -> '<b>Hello</b>, World!' asHtmlText
	}} asScript.
	q
		adoptOrganization: organizer;
		id: #test03ArchiveProperties.

	self serialize; merge.
	
	q2 := newOrganizer stepById: q id.
	
	#(someLabel aColor number someText) do: [:prop |
		self assert: (q valueOfProperty: prop) equals: (q2 valueOfProperty: prop)].