initialization
setUp: script

	xAxis
		label: (script valueOfProperty: #horizontalLabel ifAbsent: ['X']);
		firstVal: (script valueOfProperty: #horizontalFirst ifAbsent: [0.0]);
		incVal: (script valueOfProperty: #horizontalInc ifAbsent: [0.5]).

	yAxis
		label: (script valueOfProperty: #verticalLabel ifAbsent: ['Y']);
		firstVal: (script valueOfProperty: #verticalFirst ifAbsent: [0.0]);
		incVal: (script valueOfProperty: #verticalInc ifAbsent: [0.5]).

	topLabel setProperty: #builder toValue: (script valueOfProperty: #topLabel ifAbsent: [ [[ '(no title)' ]] ]).