actions
browseObjects
	"Input"

	| pane |
	pane := ViPane new
		objects: self objects;
		currentQuery: #defaultProperties asScript;
		yourself.
	pane
		chooseObjectAt: ActiveHand cursorPoint - (10@10)
		thenNotify: VivideLight active
		with: #openArtifact:.