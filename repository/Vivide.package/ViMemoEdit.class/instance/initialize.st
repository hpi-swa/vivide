as yet unclassified
initialize

	super initialize.
	
	self textMorph contextMenu: [:menu :editor |
		menu
			addIcon: UiFugueIcons editBoldIcon text: 'Bold' receiver: self selector: #makeSelectionBold;
			addIcon: UiFugueIcons editItalicIcon text: 'Italic' receiver: self selector: #makeSelectionItalic;
			addIcon: UiFugueIcons editUnderlineIcon text: 'Underline' receiver: self selector: #makeSelectionUnderlined;
			addSeparator;
			addText: 'Normal' receiver: self selector: #setFont: argument: TextStyle defaultFont;
			addText: 'Mono' receiver: self selector: #setFont: argument: TextStyle defaultFixedFont;
			addSeparator.
			
	#(black blue '#00AA00' '#DD0000') do: [:symbol |
		menu
			addIcon: (Morph new extent: 16@16; color: (Color fromString: symbol)) imageForm
			text: symbol
			receiver: self selector: #setColor: argument: symbol].
		menu]