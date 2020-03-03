instance creation
forScript: symbolOrBlockOrScript withObjects: objects

	| pane |
	pane := ViPane new
		script: symbolOrBlockOrScript asScript;
		objects: objects;
		yourself.

	"Allow domain objects to override #artifacts script if not requested otherwise by the user."
	self flag: #evaluate; flag: #collect.
	self currentEvent in: [:evt |
		(evt isDropEvent and: [evt contents hasFlag: #collect])
			ifFalse: [pane chooseVivideTool]].

	^ pane