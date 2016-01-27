halos and balloon help
haloClass

	^ (VivideLight useClassicMode or: [VivideLight active isNil])
		ifTrue: [super haloClass]
		ifFalse: [#ViPaneHaloMorph]