instance creation
new: symbolOrBlockOrScript for: objects

	| instance |
	instance := self new.
	instance pane: (ViPane new
		queries: [ViQueryOrganizer active orderedSteps];
		currentQuery: (ViQueryStep convert: symbolOrBlockOrScript);
		objects: objects;
		chooseMostAppropriateQuery).

	(objects notEmpty and: [objects last isKindOf: ViScriptPart]) ifTrue: [
		ViLoggingService trigger: {#message -> 'Script editor(s) opened.'}].  

	objects do: [:object | ViObjectHistory addObject: object].

	^ instance