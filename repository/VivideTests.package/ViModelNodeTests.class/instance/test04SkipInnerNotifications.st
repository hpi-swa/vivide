tests - notifications and updates
test04SkipInnerNotifications
	"If your parent updates, do not update because you will be invalid anyway."
	
	| script object model innerNode |
	script := {
		"Transformation for outer (or root) node."
		[:valueHolder |
			valueHolder contents: valueHolder contents + 1.
			valueHolder]
				 -> { #notifier -> [ViEventNotifier named: #test] }.
		[:valueHolder | #text -> valueHolder contents asString].

		"Transformation for inner node."
		[:valueHolder |
			valueHolder contents: valueHolder contents + 1.
			valueHolder]
				 -> { #notifier -> [ViEventNotifier named: #test] }.
		[:valueHolder | #text -> valueHolder contents asString].
	
	} asScript.
	object := ValueHolder new.
	model := script interpretScriptWith: {object}.

	object contents: 1.	
	innerNode := model firstNode.
	
	self assert: 2 equals: object contents.
	innerNode firstNode.
	self assert: 3 equals: object contents.
	self assert: model firstNode firstNode == innerNode firstNode.
	
	(ViEventNotifier named: #test) trigger; trigger; trigger.
	self processDeferredUpdates.
	
	"1) No script execution for (outdated) inner node."
	innerNode firstNode.
	self assert: 3 equals: object contents.
	
	"2) New inner node content is different."
	self assert: model firstNode "4" firstNode "5" ~~ innerNode firstNode.
	
	"3) Side effect got triggered."
	self assert: 5 equals: object contents.