actions
browseObjects
	"Input"

	| pane |
	pane := ViPane new
		currentQuery: {#defaultProperties -> {#view -> ViTreePlainView}} asScript;
		objects: self objects;
		yourself.
		
	self flag: #usability. "mt: May we want to drag out multiple objects of this list?"
	pane
		chooseObjectAt: ActiveHand cursorPoint - (10@10)
		thenNotify: VivideLight active
		with: #openArtifact:.