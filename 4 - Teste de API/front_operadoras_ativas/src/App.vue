<script setup>
import DataTable from './components/DataTable.vue'
import { onMounted,ref } from 'vue'

const data = ref([])
onMounted(async () => {
  const response = await fetch('http://127.0.0.1:5001/dados') 
  data.value = await response.json()
})

</script>

<template>
  <h1 class="p-8 bg-gray-100 min-h-screen">
    <DataTable :data="data" /> 
  </h1>
</template>

<style scoped> 
</style>
