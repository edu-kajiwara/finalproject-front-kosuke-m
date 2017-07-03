<buttons>
    <a class="btn btn-outline-info" href='#'>Hello</a>
    <a class="btn btn-outline-info" href='#users/'>Users</a>
    <a class="btn btn-outline-info" href='#add/'>Add</a>
    <a class="btn btn-outline-info" href='#fibonacci/'>Fibonacci</a>
    <a class="btn btn-outline-info" onclick={click}>InitModal</a>
    <script>
    var self = this;
    self.observer = opts.observer;
    click(event){
        self.observer.trigger("modal-open");
    };
    </script>
</buttons>