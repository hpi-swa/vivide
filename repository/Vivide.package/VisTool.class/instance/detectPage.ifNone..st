accessing
detectPage: id ifNone: exceptionBlock

	^ pages
		detect: [:page | page queries anySatisfy: [:query | query id = id]]
		ifNone: exceptionBlock