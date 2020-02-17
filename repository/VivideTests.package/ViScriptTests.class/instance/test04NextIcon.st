tests
test04NextIcon

	| script iconOne iconTwo |
	iconOne := (Form extent: 12@12 depth: 32) fillColor: Color blue; yourself.
	iconTwo := (Form extent: 12@12 depth: 32) fillColor: Color red; yourself.
	
	script := {
		[:num | num * num].
		[:numbers | numbers select: [:num | num even]] -> { #icon -> iconOne }.
	} asScript.

	self
		assert: script icon isNil;
		assert: iconOne equals: script nextIcon.
		
	script icon: iconTwo.
	
	self
		assert: iconTwo equals: script icon;
		assert: iconTwo equals: script nextIcon.