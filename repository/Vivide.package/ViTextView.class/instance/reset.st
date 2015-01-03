initialization
reset

	| showGroups |
	textEdit clear.
	lastNode := nil.
	
	(self model notNil and: [self specs notEmpty]) ifTrue: [
		textEdit readOnly: ((self script allPropertySteps first valueOfProperty: #editable ifAbsent: [false]) not or: [self model nodes size > 1]).
		
		showGroups := self model groups size > 1.
		self model groups do: [:group |
			(showGroups and: [(self model childCountInGroup: group) > 0])
				ifTrue: [self appendGroupSeparator: group].
			self
				appendFrom: 1
				to: (self model childCountInGroup: group)
				inGroup: group]].