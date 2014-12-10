preferences
useClassicMode: aBoolean

	aBoolean = UseClassicMode ifTrue: [^ self].
	UseClassicMode := aBoolean.
	ViLoggingService trigger: {#message -> ('Classic mode ', (aBoolean ifTrue: ['enabled.'] ifFalse: ['disabled.']))}.