interactive error handling
notify: aMessage at: aLocation in: aSource

	self view
		notify: (aMessage allButLast: 3) "remove trailing ' ->' "
		at: aLocation
		in: aSource.