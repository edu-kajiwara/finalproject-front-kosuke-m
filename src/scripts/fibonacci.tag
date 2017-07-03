<fibonacci>
    <h2>{result}</h2>
    <button type="button" class="btn btn-primary" onclick={click}>Fibonacci</button>
    <script>
        this.result = 0;
        click(event){
            // ボタンが押下されるたびに、最初の二項は 0, 1 であり、以後どの項もその直前の2つの項の和を求めるロジックを実装する
            console.log('button click')
        }
    </script>
</fibonacci>