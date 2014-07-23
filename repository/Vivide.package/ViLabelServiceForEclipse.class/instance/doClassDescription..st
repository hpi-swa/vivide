as yet unclassified
doClassDescription: cls

	

	^ String streamContents: [:strm |
		| firstFound uppercasePrefix i lbl |
		firstFound := false.
		uppercasePrefix := false.
		i := 0.
		lbl := ViLabelStringService doObject: cls.
		cls isTrait ifTrue: [
			strm nextPut: lbl first.
			lbl := lbl allButFirst].
		
		lbl overlappingPairsDo: [:char1 :char2 |
			firstFound
				ifTrue: [strm nextPut: char2]
				ifFalse: [
					i := i + 1.
					uppercasePrefix ifFalse: [
						uppercasePrefix := char1 isUppercase & char2 isUppercase].
					char1 isLowercase & char2 isUppercase
						ifTrue: [strm nextPut: char2. firstFound := true].
					uppercasePrefix & char1 isUppercase & char2 isLowercase
						ifTrue: [strm nextPut: char1; nextPut: char2. firstFound := true].
					i > 3 ifTrue: [
						"Assume no prefix at all"
						^ lbl]]].
		firstFound ifFalse: [^ lbl]]