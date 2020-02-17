tests - squeak notifications
test03ChangeUpdateNotifications
	"It is possible to react to Squeak's change-update events."
	
	| script model object |
	script := {
		[:morph | #object -> morph. #color -> morph color]
			-> {#notifier -> [:morph |
					ViSqueakChangeUpdateNotifier subject: morph aspect: #color]}
	} asScript.
	object := Morph new.
	
	model := script interpretScriptWith: {object}.
	self assert: object color equals: (model firstNode at: #color).

	object color: Color yellow.
	self deny: object color equals: (model firstNode at: #color).

	object changed: #someOtherAspect.
	self processDeferredUpdates.
	self deny: object color equals: (model firstNode at: #color).

	object changed: #color.
	self processDeferredUpdates.
	self assert: object color equals: (model firstNode at: #color).