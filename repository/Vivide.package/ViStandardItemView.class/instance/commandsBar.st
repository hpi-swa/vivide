accessing
commandsBar

	^ commandsBar ifNil: [
		commandsBar := ViQueryCommandsBar new
			hResizing: #spaceFill;
			hideAddButton;
			yourself.
		self connect: commandsBar signal: #activated: toSelector: #executeCommand:.
		commandsBar]