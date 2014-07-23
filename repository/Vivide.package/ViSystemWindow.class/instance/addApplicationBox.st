initialization
addApplicationBox
	
	labelArea ifNil: [^ self].

	applicationBox ifNotNil: [applicationBox delete].
	applicationBox := self createApplicationBox.
	labelArea addMorphBack: applicationBox