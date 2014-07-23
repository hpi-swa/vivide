accessing
searchModel

	^ searchModel ifNil: [searchModel := UiPropertyItemNode new
	deferThreshold: 20;
	yourself]