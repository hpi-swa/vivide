as yet unclassified
explorerContents

	^ {
		ObjectExplorerWrapper
			with: (Dictionary newFrom: self associations)
			name: '__properties'
			model: self
	
	
	}, (self nodes replace: [:node |
		ObjectExplorerWrapper
			with: node
			name: (node object printString contractTo: 64)
			model: self])