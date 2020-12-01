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
  },

  created: function() {
    this.updateContents();
  },

  methods: {
    updateContents() {
      Axios.get("/api/v1/integer_literal_descriptions/index.json").then(
        response => {
          const responseData = response.data;
          this.title = responseData.title;
          this.description = responseData.description;
          this.contents = responseData.contents;
        }
      );
    }
  }
};
</script>

<style scoped>
</style>
