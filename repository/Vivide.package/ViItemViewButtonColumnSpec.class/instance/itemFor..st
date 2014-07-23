building
itemFor: aNode

	| button |
	"container := Morph new color: Color transparent."
	button := (UiToolButton new
		buttonStyle: #iconOnly;
		icon: (aNode checkable
			ifTrue: [UiFugueIcons minusSmallIcon]
			ifFalse: [UiFugueIcons plusSmallIcon]);
		layoutInset: (0 @ -2 corner: 0 @ -1);
		fullBounds;
		yourself).
"	container addMorph: button.
	container submorphs first topLeft: container topLeft + (1@1).
	container bounds: (container topLeft corner: container submorphs first bottomRight).
"	

	aNode checkable
		ifTrue: [
			button setProperty: #selectable toValue: true.
			self connect: button signal: #clicked: to: self root selector: #removeStatement: pattern: {#=. aNode}]
		ifFalse: [
			button setProperty: #selectable toValue: false.
			self connect: button signal: #clicked: to: self root selector: #addStatementWithDefaultCode].

	^ button