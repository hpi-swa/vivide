tools
explorerContents

	^ Array streamContents: [:s |
		s nextPut: (ObjectExplorerWrapper
			with: self accessString
			name: 'accessString'
			model: self).
		s nextPut: (ObjectExplorerWrapper
			with: self returnType
			name: 'returnType'
			model: self)]