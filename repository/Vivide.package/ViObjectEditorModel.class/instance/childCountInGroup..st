item model - hierarchy
childCountInGroup: groupName

	^ self base
		ifNil: [0]
		ifNotNil: [:wrappedObject |
			self isRoot
				ifTrue: [1 "expose root"]
				ifFalse: [wrappedObject withoutListWrapper isString
					ifTrue: [0 "do not expand strings"]
					ifFalse: [(contentsCache at: groupName) size]]]