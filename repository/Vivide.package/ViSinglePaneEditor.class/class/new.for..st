instance creation
new: symbolOrBlockOrScript for: objects

	| instance script pane |
	instance := self new.
	script := ViQueryStep convert: symbolOrBlockOrScript.
	pane := ViPane new
		objects: objects;
		queries: [script organization orderedSteps];
		yourself.
	pane recentQueries add: script.
	pane chooseMostAppropriateQuery.
	pane currentQuery ifNil: [pane currentQuery: script].
	  
	instance pane: pane.

	(objects notEmpty and: [objects last isKindOf: ViScriptPart]) ifTrue: [
		ViLoggingService trigger: {#message -> 'Script editor(s) opened.'}].  

	objects do: [:object | ViProfile active addObject: object].

	^ instance