instance creation
new: symbolOrBlockOrScript for: objects

	| instance |
	instance := self new.
	instance addPane.
	instance inputPane
		currentQuery: (ViQueryStep convert: symbolOrBlockOrScript);
		objects: objects;
		chooseMostAppropriateQuery.

	objects do: [:object | ViObjectHistory addObject: object].

	^ instance