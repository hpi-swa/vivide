as yet unclassified
fileOutClasses: classes results: results to: filename

	| file |
	file := FileStream forceNewFileNamed: filename.

	file nextPutAll: 'classes;'.
	self methodCategories do: [:cat |
		file nextPutAll: cat, ';;'].
	file crlf.

	results with: classes do: [:row :cls|
		file nextPutAll: cls name, ';'.
		row do: [:cell | cell do: [:entry |
			file nextPutAll: entry asString, ';']].
		file crlf.
	].

	file close.