as yet unclassified
showHowTo

	| menu entries |
	entries := (FileDirectory on: FileDirectory default pathName, '/package-cache/vivide/howto') entries.
	
	menu := MenuMorph new
		defaultTarget: self;
		title: 'HowTo Animations'.

	entries
		select: [:entry | entry name endsWith: '.gif']
		thenDo: [:gifEntry |
			menu
				add: gifEntry baseName
				selector: #openAnimation:
				argument: gifEntry fullName].
	menu popUpForHand: self currentHand in: self currentWorld.  