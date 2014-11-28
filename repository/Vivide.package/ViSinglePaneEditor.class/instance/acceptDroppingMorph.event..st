dropping
acceptDroppingMorph: aTransferMorph event: evt

	| singlePane metaScript |
	self assert: (self pane view isKindOf: ViMultiPaneWidget) not.

	self setProperty: #isSpawning toValue: true.   

	singlePane := self pane.
	metaScript := ViScriptPart convertPanes: {singlePane asDictionary}.
	
	self pane: ViPane new.
	self pane
		addMorphBack: (ViMultiPaneWidget new
			initializeFor: metaScript in: self pane;
			addPane: singlePane "preserve state");
		objects: singlePane objects;
		queries: singlePane queries;
		currentQuery: metaScript.

	self pane view
		acceptDroppingMorph: aTransferMorph
		event: evt.

	self clearDrawFlag: #dropPane.
	self removeProperty: #isSpawning.  