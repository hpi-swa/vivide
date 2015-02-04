as yet unclassified
onKeyStroked: evt on: aNode

	evt keyCharacter isLetter
		ifTrue: [
			self cancelCurrentSearch.
			
			self flag: #hacky.
			self searchEdit textMorph keyStroke: evt.
			
			self removeAlarm: #findNext.
			self addAlarm: #findNext after: 250].
	
	(evt keyCharacter = Character backspace or: [evt keyCharacter = Character escape])
		ifTrue: [
			self searchEdit clear.
			self findNext].