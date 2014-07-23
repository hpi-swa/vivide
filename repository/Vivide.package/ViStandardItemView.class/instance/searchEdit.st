accessing
searchEdit

	^ searchEdit ifNil: [searchEdit := UiLineEdit new
		helpText: 'Search...';
		yourself]