<template>
  <v-toolbar color="yellow" >
    <v-layout row wrap>
      <v-flex xs10 sm4>
          <router-link to="/">
            <img :src='logo' class="logo"/>
          </router-link>
      </v-flex>
    </v-layout>
    
  </v-toolbar>
</template>

<script>
  import Logo from '../../assets/images/logo.png';
  export default {
    data () { 
      return {
        logo: Logo
      }
    }
  }
</script>

<style scoped>
  .logo {
    width: 120px !important;
    margin-top: 10px;
  }
</style>