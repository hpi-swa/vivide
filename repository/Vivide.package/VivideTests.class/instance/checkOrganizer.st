as yet unclassified
checkOrganizer
	"Just some recurring checks whether the organizer is setup correctly for all tests."
	
	#(artifacts identity printString senders implementors)
		do: [:id | self assert: id asScript notNil].