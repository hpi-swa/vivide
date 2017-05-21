initialization
reset

	| showGroups |
	textEdit clear.
	lastNode := nil.
	
	(self model isNil or: [self specs isEmpty])
		ifTrue: [^ self].
		
	"Control CMD+S and modifications in the text box."
	textEdit readOnly: (
		(self script
			valueOfProperty: #editable
			ifAbsent: [(self script allPropertySteps ifEmpty: [{[:fake | #object -> fake] asScript}]) first
				valueOfProperty: #editable
				ifAbsent: [false]]) not
			or: [self model nodes size > 1]).

	showGroups := self model groups size > 1.
	self model groups do: [:group |
		(showGroups and: [(self model childCountInGroup: group) > 0])
			ifTrue: [self appendGroupSeparator: group].
		self
			appendFrom: 1
			to: (self model childCountInGroup: group)
			inGroup: group].

	self model nodes do: [:node |
		(node includesKey: #selection) ifTrue: [
			textEdit
				select: (node at: #selection);
				scrollToShowSelection]].
		
	(self script valueOfProperty: #scrollToBottom ifAbsent: [false])
		ifTrue: [textEdit scrollToBottom].
		
	self model nodes do: [:node | 
		(node includesKey: #backgroundColor) ifTrue: [
			textEdit color: (self model nodes first at: #backgroundColor)]]