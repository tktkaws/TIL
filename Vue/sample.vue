<script src="https://cdn.jsdelivr.net/npm/vue@2.6.7/dist/vue.js"></script>

<div id="app">
<p>{{number}}</p>
<button v-on:click="countUp(5)">かうんとあっぷ</button>
<p v-on:mousemove="changeMouse(3, $event)">マウスを載せてください
<span v-on:mousemove>反応しないでください</span>
</p>
<p>X:{{x}}, Y:{{y}}</p>
<input type="text" v-on:keyup.space.enter="myAlert">
</div>

new Vue({
  el: '#app',
  data: {
  	number: 0,
    x:0,
    y:0
  },
  methods: {
  	countUp: function(times) {
    	this.number += 1 * times
    },
    changeMouse: function(divide, event) {
    	this.x = event.clientX / divide;
      this.y = event.clientY / divide;
    },
    myAlert() {
     alert('アラート');

    }

  }
})






<script src="https://cdn.jsdelivr.net/npm/vue@2.6.7/dist/vue.js"></script>

<div id="app">
<p>{{number}}</p>
<button v-on:[event]="countUp(5)">かうんとあっぷ</button>
<p v-on:mousemove="changeMouse(3, $event)">マウスを載せてください
<span v-on:mousemove>反応しないでください</span>
</p>
<p>X:{{x}}, Y:{{y}}</p>
<input type="text" v-on:keyup.space.enter="myAlert">
</div>

new Vue({
  el: '#app',
  data: {
  	number: 0,
    x:0,
    y:0,
    event: 'click'
  },
  methods: {
  	countUp: function(times) {
    	this.number += 1 * times
    },
    changeMouse: function(divide, event) {
    	this.x = event.clientX / divide;
      this.y = event.clientY / divide;
    },
    myAlert() {
     alert('アラート');

    }

  }
})




// @マーク

<script>
export default {};
</script>

<style>
</style>
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.7/dist/vue.js"></script>

<div id="app">
<p>{{number}}</p>
<button @[event]="countUp(5)">かうんとあっぷ</button>
<p v-on:mousemove="changeMouse(3, $event)">マウスを載せてください
<span v-on:mousemove>反応しないでください</span>
</p>
<p>X:{{x}}, Y:{{y}}</p>
<input type="text" v-on:keyup.space.enter="myAlert">
</div>

new Vue({
  el: '#app',
  data: {
  	number: 0,
    x:0,
    y:0,
    event: 'click'
  },
  methods: {
  	countUp: function(times) {
    	this.number += 1 * times
    },
    changeMouse: function(divide, event) {
    	this.x = event.clientX / divide;
      this.y = event.clientY / divide;
    },
    myAlert() {
     alert('アラート');

    }

  }
})



// v-model
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.7/dist/vue.js"></script>

<div id="app">
<input type="text" v-model="message">
<h1>{{message}}</h1>
</div>

new Vue({
  el: '#app',
  data: {
  	message: 'こんにちは',
  },
})



// computedプロパティ
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.7/dist/vue.js"></script>

<div id="app">
<h1>{{counter}}</h1>
<button @click="counter += 1">+1</button>
<p>{{lessThanThree}}</p>
</div>

new Vue({
  el: '#app',
  data: {
  	counter: 0
  },
  computed: {
   lessThanThree: function () {
    return this.counter > 3 ? '3より上' : '3以下'
   }
  }
})

// {{method}}でも同じ挙動ができるが、
// 関係ない描画が再描画されても反応してしまう。



ウォッチャ
基本は使用しない、computedを使うが
computedはあくまでプロパティ

<script src="https://cdn.jsdelivr.net/npm/vue@2.6.7/dist/vue.js"></script>

<div id="app">
<h1>{{counter}}</h1>
<button @click="counter += 1">+1</button>
<p>{{lessThanThree}}</p>
</div>

new Vue({
  el: '#app',
  data: {
  	counter: 0
  },
  computed: {
   lessThanThree: function () {
    return this.counter > 3 ? '3より上' : '3以下'
   }
  },
  watch: {
  	counter: function() {
     var vm = this;
     setTimeout(function(){
      vm.counter = 0
     }, 3000)
    }
  }
})


{{computedプロパティ}}は()をつけない
{{method}}は必ず()をつける

v-on="method()"
v-on="method"
どちらでもよい
javascriptの式として書いているので
