actions
combineQuery

	| wnd windows pictures queries inputObjects inputWnd outputWnd |
	wnd := self editor window.

	"Expand if you are alone."
	self flag: #checkInput. "mt: edge windows input only?"
	(wnd leftWindow isNil and: [wnd rightWindow isNil])
		ifTrue: [^ self expandQuery].

	"1) Find outer left window; stop at first input page."
	[wnd leftWindow notNil and: [wnd editor currentPage isQueryPage]]
		whileTrue: [wnd := wnd leftWindow].

	"Left-most window has input for all other."
	inputObjects := wnd editor objects.
	
	"2) Collect all windows in the row."
	self assert: wnd rightWindow notNil.
	self assert: wnd ~~ self editor window.
	windows := OrderedCollection with: wnd with: wnd rightWindow.
	wnd := wnd rightWindow.
	[wnd rightWindow notNil and: [wnd editor currentPage isQueryPage]] whileTrue: [
		wnd := wnd rightWindow.
		windows add: wnd].

	"Remember edge windows."
	inputWnd := windows first editor currentPage isQueryPage
		ifFalse: [windows first] ifTrue: [].
	outputWnd := windows last editor currentPage isQueryPage
		ifFalse: [windows last] ifTrue: [].

	"3) Get visual snapshots and queries."
	pictures := OrderedCollection new.
	queries := OrderedCollection new.
	windows do: [:w | w editor currentPage in: [:p |
		p isQueryPage ifTrue: [
			queries add: p currentQuery.
			w == self editor window ifFalse: [
				pictures add: (w editor imageForm asMorph
					topLeft: w editor topLeft;
					yourself)]	]]].
	windows remove: self editor window.
	inputWnd ifNotNil: [windows remove: inputWnd].
	outputWnd ifNotNil: [windows remove: outputWnd].

	"3b) Unglue and close."
	windows do: [:w | w unglue; closeBoxHit].

	"4) Combine queries."
	self editor objects: #().
	self currentQuery: (ViQueryStep combine: queries).
	self editor objects: inputObjects.
	
	self flag: #todo. "mt: Connect input and output windows if any."
	
	"4) Animate the whole thing."	
	pictures do: [:morph | | anim |
		morph openInWorld.
		anim := AnimPropertyAnimation
			on: morph
			property: #center
			start: morph center
			end: self center
			duration: 500.
		anim easingCurve conversionBlock: [:x | (-1 * (x-1 raisedTo: 6)) + 1].
		anim
			register;
			finishBlock: [morph delete];
			start: #deleteWhenFinished].

	self editor window comeToFront.