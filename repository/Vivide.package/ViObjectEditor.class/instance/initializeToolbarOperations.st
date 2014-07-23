toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.
	
	self toolbar rightPanel
		addGroup: #refresh
		icon: UiSilkIcons arrowRefreshSmallIcon
		contents: [:editor | {
			{#refreshModel. 'Refresh'. nil. nil. 1}.
			}].
	
	self toolbar rightPanel
		addGroup: #commands
		icon: UiSilkIcons scriptGearIcon
		contents: [:editor |
			(ViQueryCommandsBar commandsForObjects:
				((ViQueryInterpreter isCollection: editor object)
					ifTrue: [editor object]
					ifFalse: [{editor object}])) collect: [:command |
						{#executeCommand:. command label ifNil: [command definition sourceCode]. command icon. command. "1"}]
			
			].