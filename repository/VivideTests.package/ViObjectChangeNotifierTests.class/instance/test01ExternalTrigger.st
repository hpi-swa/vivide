tests
test01ExternalTrigger
	"For generic object changes, there has to be an external observer such as an object editor tool to trigger the event."
	
	| object tool |
	object := Morph new.
	tool := [
		object color: Color yellow.
		notifier objectChanged: object].
	
	object color: Color red. "direct object change"
	self assert: 0 equals: self eventCount.
	
	tool value. "indirect object change via tool"
	self assert: 1 equals: self eventCount.