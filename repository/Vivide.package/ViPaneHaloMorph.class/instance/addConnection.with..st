actions
addConnection: event with: connectHandle

	self redrawLater.
	
	newOutputPane
		ifNil: [ 
			| newWindows |
			self flag: #hacky.
			newWindows := (VivideLight active scriptArtifacts: self target selectedResults andEdit: false).
			newWindows first center: event position.
			"newWindows second topLeft: newWindows first topRight."
			
			newWindows first editor pane currentQuery in: [:script |
				"New scripts are green by default."
				self flag: #newbie.
				(script isProfileScript not and: [script color isNil])
					ifTrue: [script color: (Color fromString: '#8DCB8D')]].
			
			event shiftPressed
				ifFalse: [(ViSelectionConnection from: self target to: newWindows first editor pane) attach]
				ifTrue: [(ViResultsConnection from: self target to: newWindows first editor pane) attach].
			
			self endInteraction.
			self logDataflowChanged.
			self delete.
			
			]
		ifNotNil: [:pane |
			
			event shiftPressed
				ifFalse: [(ViSelectionConnection from: self target to: pane) attach]
				ifTrue: [(ViResultsConnection from: self target to: pane) attach].
			newOutputPane := nil.
			
			self endInteraction.
			self logDataflowChanged.].