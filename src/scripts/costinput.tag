<costinput>
<h2>{result}</h2>
<a class=""></a>
<h2>Cost Input</h2>
    <input type="text" placeholder="COST" name="cost2" required>
<form name="mainForm" style="border:1px solid #ccc">
    <div class="container">
        <label><b>COST</b></label>
        <input type="text" placeholder="COST" name="cost" required>
        <p>{cost.value}</p>


        <div class="clearfix">
            <button type="button" class="cancelbtn" id="cancel_button">Cancel</button>
            <button type="button" class="signupbtn" onclick="{click}">Input</button>
        </div>
    </div>
</form>
<script>
    var self = this;
    this.result = 0;
    click(event){
        //Advanced: ボタンが押下されるたびに、最初の二項は 0, 1 であり、以後どの項もその直前の2つの項の和を求めるロジックを実装する
        console.log(this.cost.value)
    }
</script>
</costinput>