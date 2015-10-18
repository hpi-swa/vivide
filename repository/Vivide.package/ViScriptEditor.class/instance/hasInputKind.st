hints - input kind
hasInputKind

	(self object valueOfProperty: #inputKind ifAbsent: [^ false])
		in: [:k | ^ (k isArray not or: [(k anySatisfy: [:kind | kind isNil]) not])]