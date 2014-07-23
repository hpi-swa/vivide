actions
checkTagname

	self ui tagnameEdit theText ifEmpty: [
		self
			warn: 'Tag name must not be empty.'
			for: self ui tagnameEdit bottomLeft.
		^ false].

	(SdTagOrganizer default tagNamed: self ui tagnameEdit theText asString)
		ifNotNil: [:foundTag | tag ~~ foundTag ifTrue: [
			self
				warn: 'Tag name already used.'
				for: self ui tagnameEdit.
			^ false]].
	
	^ true