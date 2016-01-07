actions
browseObjects
	"Input"

	| pane |
	pane := ViPane new
		currentQuery: {#defaultProperties -> {#view -> ViTreePlainView}} asScript;
		objects: self objects;
		yourself.
	pane
		chooseObjectAt: ActiveHand cursorPoint - (10@10)
		thenNotify: VivideLight active
		with: #openArtifact:.