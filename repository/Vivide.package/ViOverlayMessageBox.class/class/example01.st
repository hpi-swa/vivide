examples
example01

	| box |
	box := self new.
	box title: 'Example Message'.
	box message: 'Wanna clear the<br>transcript?' icon: UiSilkIcons helpIcon.
	box addAction: 'Yes.' icon: UiSilkIcons acceptIcon receiver: Transcript selector: #clear.
	box addAction: 'No!' icon: UiSilkIcons cancelIcon.
	
	box
		extent: 200@200;
		center: ActiveWorld center;
		openInWorld.