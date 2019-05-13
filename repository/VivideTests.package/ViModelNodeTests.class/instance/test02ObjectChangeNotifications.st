tests - squeak notifications
test02ObjectChangeNotifications
	"It is possible to react to Squeak's object events."
	
	| script model object |
	script := {
		[:morph | #object -> morph. #color -> morph color]
			-> {#notifier -> [:morph |
					ViSqueakObjectEventNotifier when: #colorChanged from: morph]}
	} asScript.
	object := Morph new.
	
	model := script interpretScriptWith: {object}.
	self assert: object color equals: (model firstNode at: #color).

	object color: Color yellow.
	self deny: object color equals: (model firstNode at: #color).

	object triggerEvent: #somethingElseHappened.
	self processDeferredUpdates.
	self deny: object color equals: (model firstNode at: #color).

	object triggerEvent: #colorChanged.
	self processDeferredUpdates.
	self assert: object color equals: (model firstNode at: #color).