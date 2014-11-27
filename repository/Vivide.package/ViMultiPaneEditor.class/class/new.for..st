instance creation
new: symbolOrBlockOrScript for: objects

	| instance |
	instance := self new.
	instance addPane.
	instance inputPane
		currentQuery: (ViQueryStep convert: symbolOrBlockOrScript);
		objects: objects;
		chooseMostAppropriateQuery.

	(objects notEmpty and: [objects last isKindOf: ViScriptPart]) ifTrue: [
		ViLoggingService trigger: {#message -> 'Script editor(s) opened.'}].  

	objects do: [:object | ViObjectHistory addObject: object].

	^ instance