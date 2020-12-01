<template>
  <div>
    <HeaderView v-bind:title="title" v-bind:description="description" />
    <Contents v-bind:contents="contents" />
  </div>
</template>

<script>
import HeaderView from "../HeaderView.vue";
import Contents from "./Contents.vue";
import Axios from "axios";
import { ref, onMounted } from "vue";

export default {
  components: {
    HeaderView,
    Contents
  },

  setup() {
    const title = ref('')
    const description = ref('')
    const contents = ref([])

    const updateContents = () => {
      Axios.get("/api/v1/integer_literal_descriptions/index.json").then(
        response => {
          const responseData = response.data;
          title.value = responseData.title;
          description.value = responseData.description;
          contents.value = responseData.contents;
        }
      );
    }

    onMounted(updateContents)

    return { title, description, contents }
  }
};
</script>

<style scoped>
</style>
