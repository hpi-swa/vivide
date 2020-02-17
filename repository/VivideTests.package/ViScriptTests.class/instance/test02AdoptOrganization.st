tests - organization
test02AdoptOrganization

	| script organizer |
	script := {
		[:number | number * 2].
		[:number | number + 7].
		[:result | #text -> result printString] -> { #id -> #last }.
	} asScript.
	
	organizer := ViScriptOrganizer new.
	self
		assert: 0 equals: organizer orderedSteps size;
		assert: 0 equals: organizer orderedDefinitions size;
		deny: (organizer stepById: #last) = script steps last.
		
	script adoptOrganization: organizer.
	self
		assert: 3 equals: organizer orderedSteps size;
		assert: 3 equals: organizer orderedDefinitions size;
		assert: (organizer stepById: #last) = script steps last.