events
filterEvent: aKeyboardEvent for: aMorph

	"<cmd+up>"
	((aKeyboardEvent isKeystroke
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = Character arrowUp])
			ifTrue: [self passKeyboardFocusUp. ^ aKeyboardEvent ignore].
		
	"<cmd+down>"
	((aKeyboardEvent isKeystroke
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = Character arrowDown])
			ifTrue: [self passKeyboardFocusDown. ^ aKeyboardEvent ignore].
		
	"<cmd+w>"
	((aKeyboardEvent isKeystroke
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = $w])
			ifTrue: [
				self focusedArtifact
					ifNil: ["(self firstOwnerSuchThat: [:o | o isSystemWindow]) ifNil: [self halt] ifNotNil: [:m | m delete]"]
					ifNotNil: [:a | a tryClose].
				^ aKeyboardEvent ignore].
	^ aKeyboardEvent