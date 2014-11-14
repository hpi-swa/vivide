tests
test01Equality

	| step1 step2 |
	step1 := ViQueryStep new
		label: 'Foobar';
		icon: Morph new;
		definition: ViQueryStepDefinition new;
		next: ViQueryStep new.
	step2 := ViQueryStep new
		label: 'Same here!';
		icon: Morph new;
		definition: step1 definition;
		next: step1 next.
	self deny: step1 = step2. "still different id"