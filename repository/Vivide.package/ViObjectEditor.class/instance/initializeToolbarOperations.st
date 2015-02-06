toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.
	
	self toolbar rightPanel
		addGroup: #refresh
		icon: UiSilkIcons arrowRefreshSmallIcon
		contents: [:editor | {
			{#refreshModel. 'Refresh'. ViIcons blankIcon. nil. 1}.
			{#turnOnAutoRefresh. 'Turn on auto refresh'. UiFugueIcons alarmClockSelectIcon. nil. 2}.
			{#turnOffAutoRefresh. 'Turn off auto refresh'. ViIcons blankIcon. nil. 2}
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