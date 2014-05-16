<cfscript>

myList = "One,Two,Three,Four,Five"

dump(GetBuiltInFunction("ListSome"))

result = ListSome(myList, function(string item, numeric index, string theList, string delimiter){
	dump(arguments)
	return arguments.index == 3
});

dump(result)
</cfscript>