initialization
initializePersonalInformation
	
	"email validator"
	self ui emailEdit autoConvert: true; autoAccept: true; converter: [:obj |
		| atFound |
		atFound := false.
		obj asString select: [:char |
			| result |
			result := (char isAlphaNumeric
				or: ['.-' includes: char])
				or: [atFound not and: ['+@' includes: char]].
			char = $@ ifTrue: [atFound := true].
			result]].
	self ui emailEdit theText: self emailAddress.
	self connect: self ui emailEdit signal: #textEdited: toSelector: #emailAddress:.
	
	"Personal message"
	self ui messageEdit theText: ('Hi, I am {1} and want to provide some feedback.' format: {Utilities authorInitials}).