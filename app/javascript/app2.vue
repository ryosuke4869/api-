<template>
  <v-app id="app">
    <Footer/>
  </v-app>
</template>

<script>
import Footer from "./components/Footer"

export default {
  components: {
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
</style>
