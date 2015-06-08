support - input kind
hasInputKind

	(self object valueOfProperty: #inputKind ifAbsent: [^ false])
		in: [:k | ^ (k isArray and: [k anySatisfy: [:kind | kind isNil]]) not]