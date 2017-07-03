<add>
<h2>{result}</h2>
<button type="button" class="btn btn-primary" onclick={click}>Add</button>
<script>
    this.result = 0;
    click(event){
        var number = this.result;
        number = number + 1;
        this.result = number;
    };
</script>
</add>