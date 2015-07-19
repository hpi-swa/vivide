as yet unclassified
asDictionary

	self flag: #metaScript.

	^ Dictionary new
		at: #id put: self id;
		at: #bounds put: (self bounds translateBy: self owner topLeft negated);
		at: #scripts put: (self recentQueries
			select: [:script | (script valueOfProperty: #isNew ifAbsent: [false]) not]
			thenCollect: [:script | script id]) asArray;
		at: #current put: (self currentQuery ifNotNil: [:script | script id]);
		at: #in put: (self validConnections
			select: [:connection | connection target == self]
			thenCollect: [:connection | {
				connection class connectionKind.
				connection source id}]) asArray;
		at: #out put: (self validConnections
			select: [:connection | connection source == self]
			thenCollect: [:connection | {
				connection class connectionKind.
				connection target id}]) asArray;
		yourself