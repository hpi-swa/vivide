as yet unclassified
enableStackWatcher: boolean

	boolean = self enableStackWatcher ifTrue: [^ self].

	boolean
		ifTrue: [self default start]
		ifFalse: [self default stop].