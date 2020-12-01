<template>
  <div>
    <HeaderView v-bind:title="title" v-bind:description="description" />
    <Contents v-bind:contents="contents" />
  </div>
</template>

<script>
import HeaderView from "../HeaderView.vue";
import Contents from "./Contents.vue";

export default {
  components: {
    HeaderView,
    Contents
  },
  data() {
    return {
      title: "title",
      description: "description",
      contents: []
    };
  }
};
</script>

<style scoped>
</style>
