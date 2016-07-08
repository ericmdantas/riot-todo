<todo>
    <h4>{nome}</h4>

    <form onsubmit="return false;">
        <input type="text" onkeyup={up}/>
        <button type="button" onclick={ add(text) }>go</button>
    </form>

    <ul>
        <li each={items} onclick={remove(id)}>
            {msg}
        </li>
    </ul>

    <script>
        this.nome = "riot 2do";
        this.items = [];

        this.up = function(e) {
            this.text = e.target.value;

            if (e.which === 13) {
                this.add(this.text)(null);
            }
        }

        this.add = function(text) {
            return (e) => {
                this.items.push({
                    id: Date.now(),
                    msg: text                    
                });

                this.text = '';
            }
        }

        this.remove = function(id) {
            return () => {
                this.items.forEach((item, index) => {
                    if (item.id === id) {
                        this.items.splice(index, 1);
                    }
                });
            }
        }
    </script>
</todo>
