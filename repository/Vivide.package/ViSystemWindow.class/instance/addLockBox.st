as yet unclassified
addLockBox

	labelArea ifNil: [^ self].
	lockBox ifNotNil: [lockBox delete].
	lockBox := self createLockBox.
	lockBox layoutFrame: self class closeBoxFrame.
	labelArea addMorphBack: lockBox.