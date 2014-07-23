as yet unclassified
decreaseTupleInput
	"Expect in objects a list of lists as created in #inscreaseTupleInput."
	
	| tupleSize |
	tupleSize := self tupleSize.
	tupleSize = 0 ifTrue: [^ self "no change"].
	tupleSize = 1 ifTrue: [
		self objects: self objects first.
		^ self].
	
	self objects: (self objects allButLast: (self objects size - tupleSize)).