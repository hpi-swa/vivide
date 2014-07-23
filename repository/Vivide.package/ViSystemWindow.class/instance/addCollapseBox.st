initialization
addCollapseBox

	labelArea ifNil: [^ self].
	collapseBox ifNotNil: [closeBox delete].
	collapseBox := self createCollapseBox.
	labelArea addMorphBack: collapseBox.
	
