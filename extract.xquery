<occurences>
<table>
<tr>
<th>Target</th>
<th>Succcessor</th>
</tr>
{
let $word:="has"
for $v in (collection("./?select=*.xml"))//bncDoc//w
where normalize-space(lower-case($v))=$word
return
<tr>
<td>{data($v)}</td>
<td>{data($v/following-sibling::w[1])}</td>
</tr>
}
</table>
</occurences>

