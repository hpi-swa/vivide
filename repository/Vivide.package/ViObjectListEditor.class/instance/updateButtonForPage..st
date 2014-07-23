updating
updateButtonForPage: queryPage

	(self buttonForPage: queryPage) in: [:pageBtn | queryPage currentQuery ifNotNil: [:q |
		pageBtn
			icon: (q nextIcon ifNil: [ViIcons controlRecordSmallSunkenIcon]);
			balloonText: q nextLabel;
			text: (pageBtn balloonText
				ifNil: ['(unnamed)']
				ifNotNil: [:l | l withoutLineEndingsTruncatedTo: 25])]].