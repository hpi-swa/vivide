instance creation
new

	| manager |
	manager := super new.
	WeakArray addWeakDependent: manager.
	^ manager