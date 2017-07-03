<modal>
    <div class="modal fade {md-show: dialogShowing}" id="flipFlop" tabindex="-1" role="dialog" aria-labelledby="modalLabel"
    aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="modalLabel">{title}</h4>
                </div>
                <div class="modal-body">
                    {body}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick={click}>Close</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        var self = this;
        self.observer = opts.observer;
        self.observer.on("modal-open",function(value){
            self.modal = $('#flipFlop').modal();
            self.title = value.value.title;
            self.body = value.value.body;
            self.update();
        });
    </script>
</modal>