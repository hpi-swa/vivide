*vivide
storeCompactOn: aStream
	| noneYet storeBlock |
	aStream nextPutAll: '(('.
	aStream nextPutAll: self class name.
	aStream nextPutAll: ' new)'.
	noneYet := true.
	storeBlock := [:eachAssociation | 
			noneYet
				ifTrue: [noneYet := false]
				ifFalse: [aStream nextPut: $;; crtab].
			aStream nextPutAll: ' add: '.
			eachAssociation storeCompactOn: aStream].
	self keysAreOrdered
		ifTrue: [(self associations sorted: [:a :b | a key <= b key]) do: storeBlock]
		ifFalse: [self associationsDo: storeBlock].
	noneYet ifFalse: [aStream nextPut: $;; crtab; nextPutAll: 'yourself'].
	aStream nextPut: $); crtab