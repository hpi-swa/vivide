tests - connections, tuples, cycles
test11CycleWithTwoPanes

	| pane1 pane2 |
	pane1 := ViPane new.
	pane2 := ViPane new.
	
	pane1 ~~> pane2.
	pane2 ~~> pane1.
	self
		assert: pane1 hasLocalCycle;
		assert: pane2 hasLocalCycle.
	
	"Fahrenheit-Celsius converter."
	pane1 script: [:tempC | (tempC * (9/5)) + 32] asScript.
	pane2 script: [:tempF | (tempF - 32) * (5/9)] asScript.
	
	pane1 objects: #(0) "°C".
	self
		assert: #(0) "°C" equals: pane1 objects;
		assert: #(32) "°F" equals: pane1 allResults;
		assert: #("Not yet there.") equals: pane2 objects.
	
	self forceGuiUpdate.
	self "Update input objects and result objects."
		assert: #(32) equals: pane2 objects;
		assert: #(0) equals: pane2 allResults.
		
	self forceGuiUpdate.
	self assert: #(0) "Stable conversion." equals: pane1 objects.

	self flag: #improve.
	ActiveEvent := UUID new. "Requried for second cycle detection..."
	
	pane1 objects: #(10 20 30).
	self forceGuiUpdate.
	self assert: #(50 68 86) equals: pane2 objects.