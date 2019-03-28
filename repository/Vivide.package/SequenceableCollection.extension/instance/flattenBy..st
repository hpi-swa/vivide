*vivide-scripts
flattenBy: block

	^ Array streamContents: [:stream |
		self do: [:each | | x |
			x := block value: each.
			((x isCollection and: [x isString not]) or: [x isStream])
				ifFalse: [stream nextPut: x]
				ifTrue: [stream nextPutAll: (x flattenBy: block)]]]