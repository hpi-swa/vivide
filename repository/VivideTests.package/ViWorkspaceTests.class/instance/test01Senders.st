tests - toolset
test01Senders

	| symbol methodReferences window pane |
	symbol := #addMorph:.
	methodReferences := self navigation allCallsOn: symbol.
	
	"0) Check validity of test data."
	self assert: methodReferences notEmpty.
	
	"1) Squeak's standard way through the system navigation."
	window := self navigation browseAllCallsOn: symbol.
	pane := window pane.
	self
		assert: methodReferences equals: pane objects;
		assert: pane script notNil;
		deny: #senders asScript equals: pane script. "We cannot know..."
	
	"2) Special way for Vivide widgets."
	window := vivide openSenders: symbol.
	pane := window pane.
	self
		assert: {symbol} equals: pane objects;
		assert: methodReferences asArray equals: (pane allResults select: #isMethodReference);
		assert: pane script notNil;
		assert: #senders asScript equals: pane script.