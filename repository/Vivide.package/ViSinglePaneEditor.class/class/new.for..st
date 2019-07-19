instance creation
new: symbolOrBlockOrScript for: objects

	| instance script pane |
	instance := self new.
	script := symbolOrBlockOrScript asScript.
	pane := ViPane new
		script: script;
		objects: objects;
		yourself.

	"Allow domain objects to override #artifacts script."
	pane chooseVivideTool.
	  
	instance pane: pane.

	self flag: #noStreamsSupport. "mt: May need explicit check?"

	(objects notEmpty and: [objects last isScript]) ifTrue: [
		ViLoggingService trigger: {#message -> 'Script editor(s) opened.'}].  

	objects do: #retain.
	
	^ instance