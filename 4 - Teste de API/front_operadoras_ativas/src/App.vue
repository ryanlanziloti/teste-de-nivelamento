<script setup>
import DataTable from './components/DataTable.vue';
import Search from './components/Search.vue';
import { onMounted, ref, watch } from 'vue';

const data = ref([]);
const searchQuery = ref('');

const fetchData = async (query = '') => {
  const response = await fetch(`http://127.0.0.1:5000/buscar?q=${query}`);
  data.value = await response.json();
};

onMounted(() => fetchData());

watch(searchQuery, (newQuery) => {
  fetchData(newQuery);
});
</script>

<template>
  <h1 class="p-8 bg-gray-100 min-h-screen">
    <div class="flex items-center justify-between">
      <Search @update:search="searchQuery = $event" />
    </div>
    <DataTable :items="data" />
  </h1>
</template>
