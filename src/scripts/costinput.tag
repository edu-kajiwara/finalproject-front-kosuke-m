<costinput>
<h2>Cost Input</h2>
<form name="mainForm" style="border:1px solid #ccc">
    <div class="container">
        <label><b>COST</b></label>
        <input type="text" placeholder="COST" name="cost" ref="cost" required>
        <p>{refs.cost.value}</p>


        <div class="clearfix">
            <button type="button" class="cancelbtn" id="cancel_button">Cancel</button>
            <button type="button" class="signupbtn" onclick="{click}">Input</button>
        </div>
    </div>
</form>
<script>
    var tag = this;
    this.result = 0;
    this.click = (event) =>{
        //Advanced: ボタンが押下されるたびに、最初の二項は 0, 1 であり、以後どの項もその直前の2つの項の和を求めるロジックを実装する
        console.log(this.refs.cost.value)
    }
</script>
</costinput>