tests
test07Script

	| script newOrganization other |
	script := [:num | num * num] asScript.
	script organization: organizer; register.
	script id: #test07Script.
	newOrganization := ViQueryOrganizer new.

	(ViQuerySerializer
		fromOrganizer: organizer
		intoArchive: self archive) serialize.	
	(ViQuerySerializer
		fromArchive: self archive
		intoOrganizer: newOrganization) merge.

	other := newOrganization stepById: script id.
	
	self
		assert: other ~~ script;
		assert: other = script;
		assert: (other definition isKindOf: script definition class).