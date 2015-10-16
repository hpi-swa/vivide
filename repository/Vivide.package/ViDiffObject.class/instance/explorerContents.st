as yet unclassified
explorerContents

	^ Array streamContents: [:s |
		s nextPut: (ObjectExplorerWrapper
			with: self primarySource
			name: 'primarySource'
			model: self).
		s nextPut: (ObjectExplorerWrapper
			with: self secondarySource
			name: 'secondarySource'
			model: self)]