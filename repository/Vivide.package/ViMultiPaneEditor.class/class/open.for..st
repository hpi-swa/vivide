instance creation
open: query for: objects

	| instance defaultQueryCheck |
	defaultQueryCheck := {
		[:o | o isBehavior].
		[:o | o isKindOf: PackageInfo].
		[:o | o isKindOf: ViObjectHistory].
		[:o | o isKindOf: MessageTally]
	}.
	
	instance := self new.
	instance addPane.
	instance inputPane
		currentQuery: (ViQueryStep convert: query);
		objects: objects.

	objects do: [:object | ViObjectHistory addObject: object].

	(objects size = 1 and: [defaultQueryCheck anySatisfy: [:chk | chk value: objects first]])
		ifTrue: [
			self flag: #fishy. "mt: Why second?"
			instance inputPane currentQuery: instance inputPane appropriateQueries second].
	^ instance openInWindow