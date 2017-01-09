actions
passivate

	super passivate.

	self isSticky
		ifTrue: [closeBox hideFull]
		ifFalse: [lockBox ifNotNil: [:b | b hideFull]].

	expandBox hideFull.
	self headerButtons do: [:morph | morph hideFull].