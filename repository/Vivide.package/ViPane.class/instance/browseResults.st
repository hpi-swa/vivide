actions
browseResults
	"Visible output."

	| pane |
	pane := ViPane new
		currentQuery: {#defaultProperties -> {#view -> ViTreePlainView}} asScript;
		objects: self results;
		yourself.
	pane grabKeyboard.
	pane
		chooseObjectAt: ActiveHand cursorPoint - (10@10)
		thenNotify: VivideLight active
		with: #openArtifact:.