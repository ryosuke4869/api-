<template>
  <v-card
  height="350px"
  >
    <v-app-bar color="deep-purple" dark>
      <v-toolbar-title class="ma-5">D&D.Sharing</v-toolbar-title>
      <v-btn icon class="ma-2" >
        <v-icon>mdi-magnify</v-icon>
      </v-btn>
      <v-spacer/>
      <v-btn to="/index" class="ma-2">
        新規登録
      </v-btn>
      <v-btn class="ma-2">
        ログイン
      </v-btn>
      <v-app-bar-nav-icon @click="drawer = true"></v-app-bar-nav-icon>
    </v-app-bar>

    <v-navigation-drawer
      v-model="drawer"
      absolute
      temporary
      right
    >
      <v-list
        nav
        dense
      >
        <v-list-item-group
          v-model="group"
          active-class="deep-purple--text text--accent-4"
        >
          <v-list-item>
            <v-list-item-title>ログイン</v-list-item-title>
          </v-list-item>

          <v-list-item>
            <v-list-item-title>新規登録</v-list-item-title>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
  </v-card>
</template>

<script>
export default {
  data: () => ({
    drawer: false,
    group: null,
  })
}
</script>
