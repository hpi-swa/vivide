as yet unclassified
listings

	projects ifNil: [self projects].
	listings ifNil: [
		listings := Dictionary new.
		projects valuesDo: [:p |
			p = #notFound ifFalse: [
			(self class getPlain: ('/mc/{1}/main/?format=raw' format: {(p at: #path) allButFirst})) ifNotNil: [:listing |
				listings at: (p at: #name) put: listing]]]].
	^ listings