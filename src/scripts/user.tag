<user>
    <tr>
        <td>{user_id}</td>
        <td>{user_name}</td>
        <td><button onclick={deleteClick}>Delete</button></td>
    </tr>
    <script>
        const url = process.env.API_ENDPOINT + 'user';
        const modal = this.parent.modal;
        deleteClick(event){
            modal.show();
            obs.on("close", function(text) {
                console.log(text);
            });
        }
        deleteClick_execute(event){
            const deleteId = event.item.user_id;
            fetch(url + '/' + deleteId,{method:'delete'}).then(function(response){
                location.reload(true);
            });
        }
    </script>
</user>
