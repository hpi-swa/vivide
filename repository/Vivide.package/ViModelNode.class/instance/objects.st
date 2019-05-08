accessing - convenience
objects

	^ Array streamContents: [:s | self nodesDo: [:node | s nextPut: node object]]