<cfscript>

myQuery = query(
	col_a:[1, 11, 22],
	col_b:["b1","b2","b3"],
	col_c:[true,false,true]
)

dump(GetBuiltInFunction("queryMap"))

result = queryMap(myQuery, function(struct row, numeric currentrow, query thequery){
	echo("currentrow is #currentrow#<br>")
	return {col_a:"row #arguments.currentrow#", col_b:arguments.currentrow mod 2, col_d:"ignored"}
})

dump(result)

</cfscript>