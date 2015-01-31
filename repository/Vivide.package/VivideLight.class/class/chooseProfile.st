as yet unclassified
chooseProfile

	| menu |
	menu := MenuMorph new defaultTarget: self.
	menu addTitle: 'Choose Profile'.
	self profiles do: [:profile |
		menu
			add: profile label
			selector: #openProfile:
			argument: profile].
	menu popUpInWorld.