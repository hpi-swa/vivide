halos and balloon help
haloClass

	^ VivideLight useClassicMode
		ifTrue: [super haloClass]
		ifFalse: [#ViPaneHaloMorph]