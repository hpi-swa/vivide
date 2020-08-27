as yet unclassified
acceptDroppingMorph: morph event: event

	morph isPane ifTrue: [
		^ self addPane: morph].
	
	(morph isKindOf: TransferMorph) ifTrue: [
		(self showWindowForTransferMorph: morph) in: [:panes |

			
			
			
			"panes first topLeft: bounds topLeft."

			self addAllPanes: panes.
			panes do: [:pane | self openInWindow: pane].	
			panes first center: self currentEvent position.	
			^ panes first]].
	
	^ super acceptDroppingMorph: morph event: event