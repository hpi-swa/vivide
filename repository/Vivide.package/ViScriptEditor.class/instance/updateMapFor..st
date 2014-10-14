as yet unclassified
updateMapFor: node

	| deepest count |
	deepest := self class detectDeepestBlockNode: node.
	deepest ifNil: [map := nil. ^ self].
	
	count := (deepest parents count: [:n | n isBlock]) + 1. "root"
	map := Array new: count withAll: #default.
	self redrawLater.