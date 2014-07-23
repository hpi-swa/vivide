as yet unclassified
countCategoriesIn: someClasses
	
	| results |

	results := Array new: someClasses size.

someClasses withIndexDo: [:cls :idx | | row |
	row := self methodCategories collect: [:symbol | OrderedCollection new].
	
	{cls. cls class} do: [:c | c methodDict values do: [:m |
		| found |
		found := false.
		((Smalltalk at: #MethodTags)
			at: m methodReference
			ifAbsent: [Set new]) do: [:category |
				found := true.
				(row
					at: (self methodCategories indexOf: category))
					add: m].
		found ifFalse: [
			(row
				at: (self methodCategories indexOf: self methodNullCategory))
				add: m]]].
	
	results at: idx put: row].

"Count lines of code."
1 to: results size do: [:rowIndex |
	results
		at: rowIndex
		put: ((results at: rowIndex) collect: [:someMethods |
			{
				someMethods size.
				someMethods
					inject: 0
					into: [:sum :method |
						sum + (ViToolSet linesOfCodeForMethod: method)]}])
].

	^ results