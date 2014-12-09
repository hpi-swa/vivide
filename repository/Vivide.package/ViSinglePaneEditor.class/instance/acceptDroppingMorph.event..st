dropping
acceptDroppingMorph: aTransferMorph event: evt
	"Create meta script and multi-pane widget without recreating the first pane for performance reasons."
	
	| singlePane metaScript |
	self assert: (self pane view isKindOf: ViMultiPaneWidget) not.

	self setProperty: #isSpawning toValue: true.   

	singlePane := self pane.
	metaScript := ViScriptPart convertPanes: {singlePane asDictionary}.
	
	"Adopt organization of single pane's script."
	singlePane currentQuery ifNotNil: [:query |
		metaScript adoptOrganization: query organization].
	
	self pane: ViPane new.
	self pane
		addMorphBack: (ViMultiPaneWidget new
			initializeFor: metaScript in: self pane;
			addPane: singlePane "preserve state");
		objects: singlePane objects;
		queries: singlePane queries;
		currentQuery: metaScript.

	"Calculate the initial meta script."
	self pane view setProperty: #isUpdatingScript toValue: true.
	self pane view model: self pane model.
	self pane view removeProperty: #isUpdatingScript.

	"Add second pane to multi-pane widget."
	self pane view
		acceptDroppingMorph: aTransferMorph
		event: evt.
	
	self clearDrawFlag: #dropPane.
	self removeProperty: #isSpawning.