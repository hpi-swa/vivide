morphic - submorphs
acceptDroppingMorph: morph event: event

	morph isPane ifTrue: [
		^ self addMorphFront: morph].
	
	(morph isKindOf: TransferMorph) ifTrue: [
		(self showWindowForTransferMorph: morph) in: [:panes |
			panes do: [:pane | self openInWindow: pane].	
			panes first center: self currentEvent position.	
			^ panes first]].
	
	^ super acceptDroppingMorph: morph event: event