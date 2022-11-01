import Vue from 'vue'
import App2 from '../app2.vue'
import Vuetify from 'vuetify' //追加
import 'vuetify/dist/vuetify.min.css' //追加

Vue.use(Vuetify) //追加
const vuetify = new Vuetify(); //追加

document.addEventListener('DOMContentLoaded', () => {
  const app2 = new Vue({
    vuetify, //追加
    render: h => h(App2)
  }).$mount()
  document.body.appendChild(app2.$el)
  console.log(app2)
})
