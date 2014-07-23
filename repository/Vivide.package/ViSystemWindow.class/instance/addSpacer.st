initialization
addSpacer

	labelArea ifNil: [^ self].

	labelArea addMorphBack: (UiSpacer new height: 5).