<frequency>
<table>
<tr>
<th>Target</th>
<th>Succcessor</th>
<th>Frequency</th>
</tr>
{
let $word := "has"
let $path := collection("./?select=*.xml")//bncDoc//w[lower-case(normalize-space())=$word]
for $unique_results in distinct-values($path/following-sibling::w[1])
let $count := $path/following-sibling::w[1][. = $unique_results]
let $frequency := count($count)
order by $frequency descending
return
<tr>
<td>{$word}</td>
<td>{$unique_results}</td>
<td>{$frequency}</td>
</tr>
}
</table>
</frequency>
