memento - cleanup
clear

	super clear.
	
	protocol
		ifNil: [
			self ui nameEdit theText: '']
		ifNotNil: [
			self hasUnacceptedChanges
				ifTrue: [ViAnimatedImageMorph
					flyOutOn: self
					with: UiFugueIcons crossIcon].
			
			self ui nameEdit theText: protocol protocolname].