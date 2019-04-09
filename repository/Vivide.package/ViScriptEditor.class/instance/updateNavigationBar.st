updating
updateNavigationBar

	| outline |
	self navigationBar removeAllMorphs.

	outline := self hiddenBlockNodes.
	outline size < 2 "aka. nothing" ifTrue: [
		self navigationBar addMorphBack: (UiToolButton new
			autoRaise: true;
			color: Color silver;
			layoutInset: (-3 @ -2 corner: -3 @ -1);
			icon: ViIcons icons8ChevronRightSmall64px1Icon scaledToDisplay;
			buttonStyle: #iconOnly;
			in: [:btn | self connect: btn signal: #clicked: toSelector: #goUp];
			yourself).
		^ self].
	
	outline := (outline gather: [:node |
		{node parent isMessage ifTrue: [node parent selector] ifFalse: [nil].
			node argumentNames}]) allButFirst allButLast.
		
	outline pairsDo: [:argumentNames :selector |
		self navigationBar addMorphBack: (UiToolButton new
			autoRaise: true;
			color: Color silver;
			layoutInset: (-3 @ -2 corner: -3 @ -1);
			icon: ViIcons icons8ChevronRightSmall64px1Icon scaledToDisplay;
			buttonStyle: #iconOnly;
			in: [:btn | self connect: btn signal: #clicked: toSelector: #goUp];
			yourself).
		
		argumentNames do: [:arg |
			self navigationBar addMorphBack: (UiToolButton new
				autoRaise: true;
				color: Color white;
				layoutInset: (-2@ -2 corner: -2@ -1);
				text: ((':', arg padded: #left to: 3 with: Character space) asText addAttribute: (TextColor color: (Color gray: 0.7))); flag: #workaround; "mt: TextMorph >> #fit is buggy."
				in: [:btn | self connect: btn signal: #clicked: toSelector: #exploreBinding: pattern: {#=. arg}];
				yourself).
				].
		self navigationBar addMorphBack: (UiToolButton new
				autoRaise: true;
				color: Color white;
				layoutInset: (-2@ -2 corner: -2@ -1);
				text: ((selector) asText addAttribute: (TextColor color: (Color gray: 0.5)));
				in: [:btn | self connect: btn signal: #clicked: toSelector: #exploreSymbol: pattern: {#=. selector}];
				yourself)].