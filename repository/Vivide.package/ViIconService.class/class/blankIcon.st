custom icons
blankIcon

	^ self icons
		at: #blank
		ifAbsentPut: [Form extent: 16@16 depth: 32].