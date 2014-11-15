actions
acceptChanges

	self model ifNil: [^ self].
	self model objects ifEmpty: [^ self].
	
	self model objects first = self lineEdit theText asString
		ifTrue: [^ self].

	self model nodes first in: [:node |
		node at: #object put: self lineEdit theText asString].

"	self lineEdit theText asString in: [:value |
		self model firstStep objects: {value}.
		ViObjectChangeNotifier uniqueInstance objectChanged: value].
"
	self selectionChanged: self selectedNodes.