<cfscript>

myList = "David,Nigel,Derek"

dump(GetBuiltInFunction("ListMap"))

// returns a list that contains all values returned by the closure.
result = ListMap(myList, function(string item, numeric index, string theList, string delimiter){
	echo("currentrow is #index#<br>")
	if (arguments.index mod 2) {
		return "item '#arguments.item#' is at position '#arguments.index#'"
	}
})

dump(result)

</cfscript>