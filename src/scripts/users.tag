<users>
    <div class="card-panel">
      <span class="blue-text text-darken-2">This is a card panel with dark blue text</span>
    </div>
    <!-- Dropdown Trigger -->
  <a class='dropdown-button btn' href='#' data-activates='dropdown1'>Drop Me!</a>

  <!-- Dropdown Structure -->
  <ul id='dropdown1' class='dropdown-content'>
    <li><a href="#!">one</a></li>
    <li><a href="#!">two</a></li>
    <li class="divider"></li>
    <li><a href="#!">three</a></li>
  </ul>
    <p>{users}</p>
<script>
    this.users = '( Loading... )'
    var self = this;
        fetch( 'http://localhost:8080/users' )
        .then( function ( data ) {
            return data.json();
        } )
        .then( function ( json ) {
            self.users = json;
            self.update();
        } )


</script>
</users>