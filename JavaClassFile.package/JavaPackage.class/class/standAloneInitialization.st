class initialization
standAloneInitialization
	(self classLookup: 'java/lang/Object')
		instanceMethod: 'toString' type: '()Ljava/lang/String;';
		instanceMethod: 'equals' type: '(Ljava/lang/Object;)Z'.
	(self classLookup: 'java/io/PrintStream')
		instanceMethod: 'println' type: '(I)V';
		instanceMethod: 'println' type: '(Ljava/lang/String;)V'.
	(self classLookup: 'java/lang/System')
		classField: 'out' type: 'Ljava/io/PrintStream;';
		classField: 'err' type: 'Ljava/io/PrintStream;'.
	(self classLookup: 'java/lang/String')
		instanceMethod: 'length' type: '()I';
		instanceMethod: 'indexOf' type: '(I)I';
		instanceMethod: 'indexOf' type: '(Ljava/lang/String;)I';
		instanceMethod: 'substring' type: '(I)Ljava/lang/String;';
		instanceMethod: 'substring' type: '(II)Ljava/lang/String;';
		instanceMethod: 'startsWith' type: '(Ljava/lang/String;)Z'.
