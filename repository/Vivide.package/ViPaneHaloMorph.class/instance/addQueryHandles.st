handles
addQueryHandles

	| buttons box |
	buttons := self target recentQueries collect: [:q |
		ViDraggableButton new
			checkable: true;
			color: ((UserInterfaceTheme current get: #color for: #BalloonMorph) ifNil: [Color gray: 0.85]);
			checked: self target currentQuery == q;
			icon: (q nextIcon ifNil: [(q valueOfProperty: #isNew ifAbsent: [false])
				ifTrue: [UiFugueIcons newIcon] ifFalse: [ViIcons controlRecordSmallSunkenIcon]]) scaledToDisplay;
			balloonText: (q nextLabel
				ifNil: [q definition sourceCode]
				ifNotNil: [:label | label]);
			text: (q nextLabel
				ifNil: [(q valueOfProperty: #isNew ifAbsent: [false])
					ifTrue: ['*new*'] ifFalse: ['(unnamed)']]
				ifNotNil: [:l | l withoutLineEndingsTruncatedTo: 25]);
			buttonStyle: (self target currentQuery == q
				ifTrue: [#textBesideIcon]
				ifFalse: [#iconOnly]);
			layoutInset: (self target currentQuery == q
				ifTrue: [0@ -1 corner: 1@ -2]
				ifFalse: [0]);
			setProperty: #query toValue: q;
			dragTransferType: #objects;
			passenger: {q}, (self target objects
				ifEmpty: [{}]
				ifNotEmpty: [self target objects]); "Sufficient. See VivideLight >> #openArtifacts:"
			in: [:btn | q baseClass asList size in: [:sz |
				sz > 1 ifTrue: [btn setOverlayIconFromNumber: q baseClass asList size colorFont: (Color white) colorBackground: (Color fromString: '#7A86AD')]]];
			yourself].
	buttons do: [:btn |
		self connect: btn signal: #clicked: toSelector: #changeToQueryFrom: pattern: #(0)].

	box := BorderedMorph new
		changeTableLayout;
		color: ((UserInterfaceTheme current get: #color for: #BalloonMorph) ifNil: [Color gray: 0.85]);
		borderColor: (Color gray: 0.6);
		borderWidth: 1;
		layoutInset: 3;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		addDropShadow.
	box addAllMorphs: buttons.
	box addMorphBack: (Morph new color: Color transparent; extent: 20@12). "spacer"
	
	{
	{'Choose script'. ViIcons icons8ExpandArrow64px1Icon scaledToDisplay. Color yellow darker. #chooseQuery}.
	{'Edit script'. ViIcons icons8Edit32pxIcon scaledToDisplay. Color gray: 0.85. #debugQuery}.
	"{'Copy script'. ViIcons plusSmallSunkenIcon. Color green darker. #copyQuery}."
	{'Add script'. ViIcons icons8Add32pxIcon scaledToDisplay. Color green darker. #addQuery}.
	} do: [:spec | | btn |
		btn := UiToolButton new
			buttonStyle: #iconOnly;
			color: spec third;
			icon: spec second;
			balloonText: spec first.
		self connect: btn signal: #clicked: to: self target selector: spec fourth.
		self connect: btn signal: #clicked: toSelector: #delete.
		box addMorphBack: btn].

	box fullBounds.
	box center: ((self basicBox width // 2) + self basicBox left) @ self basicBox bottom.
	self addMorph: box.