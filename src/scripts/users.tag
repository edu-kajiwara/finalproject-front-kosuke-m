require('./user.tag');
require('./modal.tag');
<users>
    <table class="table">
        <thead>
            <tr>
                <th>user_Id</th>
                <th>user_name</th>
                <th>delete</th>
            </tr>
        </thead>
        <tbody data-is="user" each="{users}">
        </tbody>
    </table>
		
<script>
    var self = this;
    self.users = [];
    var child = this.tags;
        fetch( process.env.API_ENDPOINT + 'user' )
        .then( function ( data ) {
            return data.json();
        } )
        .then( function ( json ) {
            console.log(json);
            if(self.users.length < 1){
                self.users = json;
                self.update()
            }
        } )
</script>
</users>