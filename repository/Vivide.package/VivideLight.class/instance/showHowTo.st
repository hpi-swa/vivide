as yet unclassified
showHowTo

	| menu entries |
	(PackageInfo named: #Vivide) workingCopy repositoryGroup repositories
		detect: [:repo | repo isKindOf: MCRemoteGitRepository]
		ifFound: [:repo | entries := (repo directory containingDirectory directoryNamed: 'howto') entries]
		ifNone: [^ self].
	
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