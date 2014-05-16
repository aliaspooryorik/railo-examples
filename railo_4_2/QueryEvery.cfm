<cfscript>

myQuery = query(
	col_a:[1, 11,22],
	col_b:["b1","b2","b3"]
)

dump(GetBuiltInFunction("QueryEvery"))

result = QueryEvery(myQuery, function(struct row, numeric currentrow, query thequery){
	echo("currentrow is #currentrow#<br>")
	return arguments.row.col_a > 10;
})

dump(result)


result = QueryEvery(myQuery, function(struct row, numeric currentrow, query thequery){
	echo("currentrow is #currentrow#<br>")
	return arguments.row.col_a > 0;
})

dump(result)

result = QueryEvery(myQuery, function(struct row, numeric currentrow, query thequery){
	echo("currentrow is #currentrow#<br>")
	return arguments.row.col_a > 10;
}, true)

dump(result)

</cfscript>