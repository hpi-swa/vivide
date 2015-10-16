accessing
classBehindProxy

	self flag: #useProxies. "mt: Maybe we could use proxy objects here?"
	^ (Smalltalk classNamed: self returnType)
		ifNil: [Object]