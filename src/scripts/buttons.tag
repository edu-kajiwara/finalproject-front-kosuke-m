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
        var modalParam = {'title':'削除しますか？','body':'このデータを削除します。'};
        self.observer.trigger("modal-open",{'value': modalParam});
        self.observer.on('modal-close',function(value){
            console.log('modal-close');
            console.log(value);
        });
    };
    </script>
</buttons>