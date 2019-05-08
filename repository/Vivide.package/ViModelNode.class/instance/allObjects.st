accessing - convenience
allObjects

	| skipFirst |
	skipFirst := self depth = 0. "root"
	^ Array streamContents: [:s | self allNodesDo: [:node |
			(skipFirst and: [node == self])
				ifFalse: [s nextPut: node object]]]