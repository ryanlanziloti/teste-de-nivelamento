<script setup>
import { ref, defineEmits } from 'vue';

const searchQuery = ref('');
const emit = defineEmits(['update:search']);

const updateSearch = () => {
  emit('update:search', searchQuery.value);
};
</script>

<template>
  <input
    v-model="searchQuery"
    @input="updateSearch"
    class="p-2 border rounded"
    placeholder="Digite sua busca..."
  />
</template>
