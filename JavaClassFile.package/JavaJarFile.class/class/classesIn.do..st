accessing-classes
classesIn: aFileOrDirectory do: aBlock
	" self classesIn: '/Library/Java/JavaVirtualMachines/jdk1.8.0_112.jdk/Contents/Home/jre/lib/rt.jar' do: [: name : contents | ] "
	(self new readFrom: aFileOrDirectory) do: aBlock