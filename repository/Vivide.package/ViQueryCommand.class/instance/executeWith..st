as yet unclassified
executeWith: anObject

	^ {anObject isList. self definition receiverIsCollection}
		caseOf: {
			[{false.false}] -> [
				"Just as expected. :)"
				[anObject executeMethod: self definition method]
					ensure: [self commandExecutionChangesObject
						ifTrue: [ViObjectChangeNotifier uniqueInstance objectChanged: anObject]]].
			[{false.true}] -> [
				"Fake collection with single object."
				self flag: #badAssumption. "mt: How could this be possible with ignoring single-element collections in snippet editors anyway?! Better raise error?"
				[{anObject} executeMethod: self definition method]
					ensure: [self commandExecutionChangesObject
						ifTrue: [ViObjectChangeNotifier uniqueInstance objectChanged: anObject]]].
			[{true.false}] -> [
				"Execute multiple times."
				anObject collect: [:each | [each executeMethod: self definition method]
					ensure: [self commandExecutionChangesObject
						ifTrue: [ViObjectChangeNotifier uniqueInstance objectChanged: each]]]].
			[{true.true}] -> [
				"Just as expected. ;)"
				[anObject executeMethod: self definition method]
					ensure: [anObject do: [:each | self commandExecutionChangesObject
						ifTrue: [ViObjectChangeNotifier uniqueInstance objectChanged: each]]]]}.