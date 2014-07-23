drawing
drawGroupHighlightOn: aCanvas

	| groupMorph groupBounds contentBounds |
	"Draw nothing if current group is hidden."
	secondaryList owner ifNil: [^ self].
	self currentGroupIndex == 0 ifTrue: [^ self].
	
	groupMorph := primaryList submorphs at: self currentGroupIndex.	

	groupBounds := groupMorph bounds outsetBy: 4.
	contentBounds := secondaryList bounds outsetBy: 4.		

	"Shadow of selected group."
	aCanvas
		frameRectangle: (groupBounds insetBy: (2@2 corner: -1 @ -1))  
		width: 1
		color: (Color gray: 0.5);
		frameRectangle: (contentBounds insetBy: (2@2 corner: -1 @ -1)) 
		width: 1
		color: (Color gray: 0.5).
	"Shadow fix."
	self orientation == #rightToLeft
		ifTrue: [aCanvas line: groupBounds bottomLeft to: groupBounds bottomRight color: (Color gray: 0.5)].

	"Frame for selected group."
	aCanvas
		frameRectangle: groupBounds
		width: 1
		color: (Color gray: 0.75);
		frameRectangle: contentBounds 
		width: 1
		color: (Color gray: 0.75).
		
	"Background of selected group."
	aCanvas
		fillRectangle: (groupBounds insetBy: (self orientation == #leftToRight
			ifTrue: [1@1 corner: -1@1]
			ifFalse: [-1@1 corner: 1@1]))  
		color: self highlightColor;
		fillRectangle: (contentBounds insetBy: 1)
		color: self highlightColor.