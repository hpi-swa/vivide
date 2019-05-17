support
archive: class code: string under: category

	| selector |
	selector := Parser new parseSelector: string.
	
	((class selectors includes: selector) and: [(class sourceCodeAt: selector) = string])
		ifTrue: [
			"Source code did not change. Maybe the category did change."
			(class organization categoryOfElement: selector) ~= category ifTrue: [
				class organization
					classify: selector
					under: (category ifEmpty: [Categorizer default]).
				Transcript cr; show: '[ViQuerySerializer] Protocol for ', class name, ' >> ', selector, ' changed to: ', category].
				^ self].
	
	class
		compile: string
		classified: (category ifEmpty: [Categorizer default]).
		
	Transcript cr; show: '[ViQuerySerializer] Method changed: ', class name, ' >> ', selector, '(', category, ')'.