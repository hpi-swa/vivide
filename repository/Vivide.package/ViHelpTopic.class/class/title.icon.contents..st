instance creation
title: stringOrText icon: aForm contents: string

	^ super
		title: stringOrText
		icon: aForm
		contents: (string copyReplaceAll: '<tab>' with: String tab) asHtmlText
		