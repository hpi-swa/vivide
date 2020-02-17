instance creation
forScript: symbolOrBlockOrScript withObjects: objects

	| pane |
	pane := ViPane new
		script: symbolOrBlockOrScript asScript;
		objects: objects;
		yourself.

	"Allow domain objects to override #artifacts script."
	pane chooseVivideTool.

	^ pane