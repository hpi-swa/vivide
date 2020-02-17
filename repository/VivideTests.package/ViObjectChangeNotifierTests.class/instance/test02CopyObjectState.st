tests
test02CopyObjectState
	"The change objects previous state can be copied into the event."
	
	| object tool |
	object := Array with: 0.
	tool := [
		| old |
		old := object copy.
		object at: 1 put: 12.
		notifier objectChanged: object oldObject: old].
	
	tool value. "indirect object change via tool"
	self
		assert: 1 equals: self eventCount;
		assert: 12 equals: self lastEvent item first;
		assert: 0 equals: self lastEvent oldItem first.