initialization
setUp: script

	xAxis
		label: (script valueOfProperty: #horizontalLabel ifAbsent: ['X']);
		precision: (script valueOfProperty: #horizontalPrecision ifAbsent: [0]);
		firstVal: (script valueOfProperty: #horizontalFirst ifAbsent: [0.0]);
		incVal: (script valueOfProperty: #horizontalInc ifAbsent: [nil "auto"]).

	yAxis
		label: (script valueOfProperty: #verticalLabel ifAbsent: ['Y']);
		precision: (script valueOfProperty: #verticalPrecision ifAbsent: [0]);
		firstVal: (script valueOfProperty: #verticalFirst ifAbsent: [0.0]);
		incVal: (script valueOfProperty: #verticalInc ifAbsent: [nil "auto"]).

	topLabel setProperty: #builder toValue: (script valueOfProperty: #topLabel ifAbsent: [ [[ '(no title)' ]] ]).