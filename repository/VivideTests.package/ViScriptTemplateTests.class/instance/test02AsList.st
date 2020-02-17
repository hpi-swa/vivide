tests - list and script conversion
test02AsList

	self
		assert: #(1) equals: 1 asList;
		assert: #() equals: nil asList;
		assert: { '123' } equals: '123' asList;
		assert: { '123' asText } equals: '123' asText asList;
		assert: { #[123] } equals: #[123] asList;
		assert: { (Dictionary newFrom: { #one -> 1. #two -> 2 }) }
			equals: (Dictionary newFrom: { #one -> 1. #two -> 2 }) asList;
		assert: #(1 2 3) "Array" equals: #(1 2 2 3) asSet asList.
		
	"Keep object identity for other collections."
	(OrderedCollection withAll: #(1 2 3)) in: [:someObjects |
		self assert: someObjects == someObjects asList].