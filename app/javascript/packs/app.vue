<template>
  <v-app>
    <Header/>
    <v-content>
      <router-view></router-view>
    </v-content>
    <Footer/>
  </v-app>
</template>

<script>
  import Footer from './components/shared/footer.vue';
  import Header from './components/shared/header.vue';
  export default {
    data () {
      return {
      
      }
    },
    components: {
      'Footer': Footer,
      'Header': Header
    }
  }
</script>

<style>
  #app {
    background-color: #d3222a !important;
  }
</style>