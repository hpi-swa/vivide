item model - hierarchy
hasChildren

	^ self base
		ifNil: [false]
		ifNotNil: [:wrappedObject |
			self isRoot
				ifTrue: [true "expose root"]
				ifFalse: [wrappedObject withoutListWrapper value isString
					ifTrue: [false "do not expand strings"]
					ifFalse: [wrappedObject hasContents]]]