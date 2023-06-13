<top20>
<table>
<tr>
<th>Target</th>
<th>Succcessor</th>
<th>Probability</th>
</tr>
{(
let $word := "has"
let $path := collection("./?select=*.xml")//bncDoc//w[lower-case(normalize-space())=$word]
for $unique_results in distinct-values($path/following-sibling::w[1])
let $count := $path/following-sibling::w[1][. = $unique_results]
let $frequency := count($count)
let $overall_count := count(collection("./?select=*.xml")//bncDoc//w[lower-case(normalize-space())][.=$unique_results])
let $probability := $frequency div $overall_count
order by $probability descending
return
<tr>
<td>{$word}</td>
<td>{$unique_results}</td>
<td>{$probability}</td>
</tr>
)[position()<= 20]}
</table>
</top20>
