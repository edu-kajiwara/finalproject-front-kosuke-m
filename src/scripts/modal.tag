<modal>
    <div class="modal fade {md-show: dialogShowing} " id="flipFlop" tabindex="-1" role="dialog" aria-labelledby="modalLabel"
    aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-danger text-white">
                    <h4 class="modal-title" id="modalLabel">{title}</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    {body}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-danger" onclick='{delete}'>Delete</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        var self = this;
        self.observer = opts.observer;
        self.delete =function(){
            var ret = {
                'title' : self.title,
                'body' : self.body
            }
            self.observer.trigger('modal-close',{'return':ret});
            self.modal.modal('hide');
        }
        self.observer.on("modal-open",function(value){
            self.modal = $('#flipFlop').modal();
            self.title = value.value.title;
            self.body = value.value.body;
            self.modal.on('hidden.bs.modal', function (e) {
                console.log(e);
            });
            self.update();
        });
    </script>
</modal>