tests - notifications and updates
test02PartialUpdates
	"Selected nodes (or levels) in the model can update separately. No need to re-compute the entire model tree."

	| script model levelOneStamps levelTwoStamps |
	script := {
		[:num | num].
		[:num | {#text -> num asString. #stamp -> DateAndTime now} ].
		[:num | num * num]  -> { #notifier -> [ViEventNotifier named: #test] }.
		[:num | {#text -> num asString. #stamp -> DateAndTime now} ].	
	} asScript.
	model := script interpretScriptWith: #(2 3).

	levelOneStamps := model nodes collect: #stamp.
	levelTwoStamps := model nodes collect: [:node | node firstNode stamp].

	(ViEventNotifier named: #test) trigger.
	self processDeferredUpdates.

	"No update in level one."
	self assert: levelOneStamps equals: (model nodes collect: #stamp).
	"New nodes in level two."
	self deny: levelTwoStamps = (model nodes collect: [:node | node firstNode stamp]).