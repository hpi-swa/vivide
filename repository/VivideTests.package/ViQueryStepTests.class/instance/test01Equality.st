tests
test01Equality

	| step1 step2 |
	step1 := ViScriptPart new
		label: 'Foobar';
		icon: Morph new;
		definition: ViScriptDefinition new;
		next: ViScriptPart new.
	step2 := ViScriptPart new
		label: 'Same here!';
		icon: Morph new;
		definition: step1 definition;
		next: step1 next.
	self deny: step1 = step2. "still different id"