initialization
createLabel

	^ labelMorph := StringMorph new
		contents: labelString;
		font: Preferences windowTitleFont emphasis: 0