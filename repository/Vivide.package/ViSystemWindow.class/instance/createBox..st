initialization
createBox: aForm

	| box |
	box := UiToolButton new
		color: (Color gray: 0.85);
		icon: aForm;
		buttonStyle: #iconOnly;
		layoutInset: 0.
	^ box