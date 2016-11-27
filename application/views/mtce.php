<h2>Maintenance Menu</h2>
<a class='btn btn-primary' role="button" href="/crud/add">Add a new menu item</a>
<table class='table'>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Description</th>
    </tr>
    {items}
    <tr>
        <td><a class="btn btn-default" role="button" href="/crud/edit/{id}">{id}</a></td>
        <td>{name}</td>
        <td>{description}</td>
    </tr>
    {/items}
</table>