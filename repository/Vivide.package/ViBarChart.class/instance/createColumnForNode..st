initialization
createColumnForNode: node

	| column bar space label |
	column := Morph new
		changeTableLayout;
		color: Color transparent;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: (0@5 corner: 0@5);
		yourself.
	space := Morph new
		changeTableLayout;
		color: Color transparent;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		yourself.
	bar := Morph new
		hResizing: #spaceFill;
		vResizing: #rigid; "will be configured"
		borderWidth: 1;
		yourself.
	
	showLabel == true ifTrue: [ | tm |
		tm := (node at: #text ifAbsent: []) asStringOrText asText asMorph.
		label := TransformMorph new
			addMorph: tm;
			angle: Float pi /2;
			color: Color transparent;
			lock;
			yourself.
		label firstSubmorph left: label firstSubmorph left - label firstSubmorph width.
		label extent: TextStyle defaultFont height @ self labelHeight].
	
	column addAllMorphs: {space. bar}.
	label ifNotNil: [column addMorphBack: label].
	
	bar setProperty: #value toValue: (node at: #value ifAbsent: [0]).
	bar color: ((node at: #color ifAbsent: []) ifNil: [Color r: 180/255 g: 207/255 b: 239/255]).
	bar balloonText: ((node at: #balloonText ifAbsent: [node at: #text ifAbsent: []])
						ifNotNil: [:obj | obj asStringOrText]).
	bar borderColor: ((node at: #borderColor ifAbsent: []) ifNil: [Color r: 91/255 g: 135/255 b: 195/255]).
	
	bar setProperty: #realColor toValue: bar color.
	bar setProperty: #realBorderColor toValue: bar borderColor.
	
	bar on: #mouseEnter send: #mouseEnter:on: to: self.
	bar on: #mouseLeave send: #mouseLeave:on: to: self.
	bar on: #mouseEnterDragging send: #mouseEnter:on: to: self.
	bar on: #mouseLeaveDragging send: #mouseLeave:on: to: self.
	
	"Interactive stuff"
	bar
		on: #startDrag
		send: #startDrag:event:source:
		to: self
		withValue: (node at: #object).
	
	^ column