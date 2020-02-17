tests - list and script conversion
test01IsList

	self
		deny: 1 isList;
		deny: nil isList;
		deny: '123' isList; "String"
		deny: '123' asText isList;
		deny: #[123] isList; "ByteArray"
		deny: (Dictionary newFrom: { #one -> 1. #two -> 2 }) isList.
		
	self
		assert: #() isList;
		assert: #(1 2 2 3) asArray isList;
		assert: #(1 2 2 3) asSet isList;
		assert: #(1 2 2 3) asOrderedCollection isList.