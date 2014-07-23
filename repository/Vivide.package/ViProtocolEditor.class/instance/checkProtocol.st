actions
checkProtocol

	self ui nameEdit theText ifEmpty: [
		self
			warn: 'Protocol name must not be empty.'
			for: self ui nameEdit bottomLeft.
		^ false].

	(self organization categories includes: self ui nameEdit theText asString)
		ifTrue: [
			self
				warn: 'Protocol name already used.'
				for: self ui nameEdit.			
			^ false].
	
	^ true