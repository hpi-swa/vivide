instance creation
new: symbolOrBlockOrScript for: objects

	| instance script |
	instance := self new.
	script := ViQueryStep convert: symbolOrBlockOrScript.
	instance pane: (ViPane new
		queries: [script organization orderedSteps];
		currentQuery: script;
		objects: objects;
		chooseMostAppropriateQuery).

	(objects notEmpty and: [objects last isKindOf: ViScriptPart]) ifTrue: [
		ViLoggingService trigger: {#message -> 'Script editor(s) opened.'}].  

	objects do: [:object | ViObjectHistory addObject: object].

	^ instance