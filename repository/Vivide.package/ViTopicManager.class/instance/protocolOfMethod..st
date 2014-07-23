as yet unclassified
protocolOfMethod: aReference

	| pkg topicsForMethod topicsForPackage |
	pkg := PackageOrganizer default packageOfMethod: aReference.
	
	(topics includesKey: pkg name)
		ifFalse: [self updateTopicsForPackageNamed: pkg name].
		
	topicsForMethod := self topicsForMethod: aReference.
	topicsForPackage := topics at: pkg name.
	
	^ (((topicsForMethod keys
		sorted: [:k1 :k2 | (topicsForPackage at: k1) >= (topicsForPackage at: k2)]) first: (4 min: topicsForMethod size)))
			ifEmpty: ['(unknown)']
			ifNotEmpty: [:c | (c sorted: [:e1 :e2 | e1 <= e2]) reduce: [:t1 :t2 | t1, ', ', t2]]