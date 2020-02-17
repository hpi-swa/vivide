initialization
setUp: script

	super setUp: script.
	
	showCursorPosition := script valueOfProperty: #showCursor ifAbsent: [false].
	pin := (script valueOfProperty: #pins ifAbsent: [{ViIcons blankIcon}]) value asList.
	pinOffset := script valueOfProperty: #pinOffset ifAbsent: [5@0].
	
	#(color cellGap) do: [:layoutProperty |
		(script hasProperty: layoutProperty) ifTrue: [
			self container perform: layoutProperty asSimpleSetter with: (script valueOfProperty: layoutProperty)]].