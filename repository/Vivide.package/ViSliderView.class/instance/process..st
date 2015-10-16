updating
process: root

	self objects removeAll.
	self objects addAll: (root nodes collect: [:node | node at: #object]) reversed.
	
	self updateLabelsFor: root nodes.
	self slider maximum: root nodes size.

	self selectObject: self slider currentValue.