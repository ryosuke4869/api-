<template>
  <v-app id="app">
    <Header/>
    <p class="page-title">{{ message }}</p>
    <Footer/>
  </v-app>
</template>

<script>
import Header from "./components/Header"
import Footer from "./components/Footer"

export default {
  components: {
    Header,
    Footer
  },

  data: function () {
    return {
      message: "あなたのPC環境、共有しませんか？",
    }
  }

}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
.page-title{
  margin-top: 20px;
}
</style>
