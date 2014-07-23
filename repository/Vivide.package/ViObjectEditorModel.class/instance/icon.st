item model - properties
icon

	self baseObject == true
		ifTrue: [^ UiFugueIcons tickSmallIcon].
	self baseObject == false
		ifTrue: [^ UiFugueIcons crossSmallIcon].
	self baseObject isBlock
		ifTrue: [^ UiFugueIcons scriptCodeIcon].

	^ (([self base icon] on: Error do: [])
		ifNil: [
			(ViIconService doObject: self baseObject)
				ifNil: [ViIconService iconForClass: self baseObject class]])
		ifNil: [ViIconService blankIcon]