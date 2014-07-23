sorting
sortBlockForMethods

	^ [:method1 :method2 |
		method1 selector < method2 selector
			or: [method1 selector == method2 selector
				and: [method1 methodClass name < method2 methodClass name]]]