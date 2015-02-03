instance creation
new: symbolOrBlockOrScript for: objects

	| instance script |
	instance := self new.
	script := ViQueryStep convert: symbolOrBlockOrScript.
	instance pane: (ViPane new
		queries: [script organization orderedSteps
			sorted: [:s1 :s2 | s1 priority <= s2 priority]];
		currentQuery: script;
		objects: objects;
		chooseMostAppropriateQuery).

	(objects notEmpty and: [objects last isKindOf: ViScriptPart]) ifTrue: [
		ViLoggingService trigger: {#message -> 'Script editor(s) opened.'}].  

	objects do: [:object | ViProfile active addObject: object].

	^ instance