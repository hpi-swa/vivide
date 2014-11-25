actions
browseResults
	"Visible output."

	| pane |
	pane := ViPane new
		objects: self results;
		currentQuery: #defaultProperties asScript;
		yourself.
	pane
		chooseObjectAt: ActiveHand cursorPoint - (10@10)
		thenNotify: VivideLight active
		with: #openArtifact:.