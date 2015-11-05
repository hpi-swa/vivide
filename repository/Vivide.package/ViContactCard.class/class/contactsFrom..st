as yet unclassified
contactsFrom: filename

	| results |
	results := OrderedCollection new.
	
	FileStream
		readOnlyFileNamed: filename
		do: [:stream | | current |
			[stream atEnd] whileFalse: [
				| line |
				line := stream nextLine.
				(line beginsWith: 'BEGIN:VCARD')
					ifTrue: [current := ViContactCard new].
				current appendRaw: line.
				(line beginsWith: 'END:VCARD')
					ifTrue: [results add: current].
			
			]
	].

	^ results