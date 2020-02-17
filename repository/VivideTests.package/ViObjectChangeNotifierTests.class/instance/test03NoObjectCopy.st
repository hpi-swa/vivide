tests
test03NoObjectCopy
	"The object in the change event is provided as direct reference."
	
	| object tool event |
	object := Array with: 0.
	tool := [
		object at: 1 put: (object at: 1) + 10.
		notifier objectChanged: object].
	
	tool value. "indirect object change via tool"
	event := self lastEvent.
	tool value. "another change -- previous event not yet handled"
	self
		assert: 20 equals: event item first;
		assert: event item == object.