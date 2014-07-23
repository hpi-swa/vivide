accessing
hostAddress

	^ hostAddress ifNil: [NetNameResolver localHostAddress]