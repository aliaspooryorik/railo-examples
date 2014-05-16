<cfscript>

myList = "David,Nigel,Derek,David,Nigel,Derek"

dump(GetBuiltInFunction("ListReduce"))


result = ListReduce(myList, function(any result, string item, numeric index, string theList, string delimiter){
	dump(arguments)
	if(isnull(arguments.result)){
		arguments.result = []
	}
	arrayappend(arguments.result, {index=index, item=item})
	return arguments.result
});

dump(result)
</cfscript>