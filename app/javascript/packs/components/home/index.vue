<template>
     <div>
        
        <MovieList v-for='(category, index) in categories'
                    :key='index'
                    :name='category.name'
                    :movies='category.movies'/>
     </div>
   </template>

  <script>
    // ------- Dados Fake apenas para testarmos o layout -------- //
    
    const categoriesMock = [
      {
        name: "Burger", movies: [
          {id: '1', thumb_url: 'http://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG10530.png'},
          {id: '2', thumb_url: 'http://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG10530.png'},
          {id: '3', thumb_url: 'http://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG10530.png'},
          {id: '4', thumb_url: 'http://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG10530.png'},
          {id: '5', thumb_url: 'http://pngimg.com/uploads/burger_sandwich/burger_sandwich_PNG10530.png'}
        ]
      },{
        name: "Bebidas", movies: [
          {id: '1', thumb_url: 'assets/images/copo.png'},
          {id: '2', thumb_url: 'assets/images/copo.png'},
          {id: '3', thumb_url: 'assets/images/copo.png'},
          {id: '4', thumb_url: 'assets/images/copo.png'},
          {id: '5', thumb_url: 'assets/images/copo.png'},
          {id: '6', thumb_url: 'assets/images/copo.png'}
        ]
      },{
        name: "Doces", movies: [
          {id: '1', thumb_url: 'assets/images/cookies.png'},
          {id: '2', thumb_url: 'assets/images/cookies.png'},
          {id: '3', thumb_url: 'assets/images/cookies.png'},
          {id: '4', thumb_url: 'assets/images/cookies.png'},
          {id: '5', thumb_url: 'assets/images/cookies.png'},
          {id: '6', thumb_url: 'assets/images/cookies.png'}
        ]
      }
    ];
    
    import MovieList from './_movie_list.vue'
     export default {
       data () {
         return {
            categories: categoriesMock
         }
       },
       components: {
         'MovieList': MovieList
       }
     }

     console.log(categoriesMock);
     
   </script>

   <style scoped>
   </style>