as yet unclassified
reset

	| showGroups |
	textEdit clear.
	lastNode := nil.
	
	(self model notNil and: [self specs notEmpty]) ifTrue: [
		textEdit readOnly: (self specs first editableFor: self model) not.
		
		showGroups := self model groups size > 1.
		self model groups do: [:group |
			(showGroups and: [(self model childCountInGroup: group) > 0])
				ifTrue: [self appendGroupSeparator: group].
			self
				appendFrom: 1
				to: (self model childCountInGroup: group)
				inGroup: group]].