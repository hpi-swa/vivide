as yet unclassified
sizeForDirectory: aFileDirectory into: sum

	| tmp |
	tmp := (aFileDirectory entries reject: [:e | e isDirectory])
		inject: sum
		into: [:s :e | s := s + e fileSize].

	aFileDirectory entries
		select: [:e | e isDirectory]
		thenDo: [:e | tmp := self sizeForDirectory: e asFileDirectory into: tmp].
		
	^ tmp