initialization
initializeScreenshots

	| maxIndex |
	maxIndex := ActiveWorld submorphs size.
	self screenshots addDefaultGroup.

	self screenshots addAllChildren: (ActiveWorld submorphs withIndexCollect: [:morph :index |
		| qname form |
		qname := index - 1 printPaddedWith: $0 to: 3.
		form := morph imageForm.
		UiPropertyItemNode newFrom: {
			#id -> ('wnd', qname).
			#formName -> (morph isSystemWindow ifTrue: [morph label] ifFalse: [morph name]).
			#form -> morph imageForm.
			#checked -> true.
			#thumbnail -> ((form scaledToSize: 100 @ 100) clippedToSize: 100@100).
			#top -> morph top.
			#left -> morph left.
			#zIndex -> (maxIndex - index + 1)}]).
	
	self ui screenshotList
		model: self screenshots;
		listSpec: ((UiItemViewColumnSpec newFrom: {#text -> #yourself. #icon -> #thumbnail. #checked -> #checked. #checkable -> true})
			textConverter: [:node | ('<b>{1}</b><br>{5}<br>{2}@{3} extent: {4}' format: {
				node id. node left. node top. node form extent. node formName}) asHtmlText];
			itemOrientation: #horizontalMaxHeight).
			
	self connect: self ui screenshotList signal: #doubleClicked: toSelector: #openScreenshot:.
	
	self connect: self ui selectNoneBtn signal: #clicked: toSelector: #selectNoneScreenshots.
	self connect: self ui selectAllBtn signal: #clicked: toSelector: #selectAllScreenshots.