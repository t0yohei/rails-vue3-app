<template>
  <div>
    <table class="contents">
      <tr>
        <th>名前</th>
        <th>英語訳</th>
        <th>表記例</th>
        <th>用途</th>
      </tr>
      <tr v-for="content in contents" v-bind:key="content.name">
        <td>{{ content.name }}</td>
        <td>{{ content.english }}</td>
        <td>{{ content.sample }}</td>
        <td>{{ content.usage }}</td>
      </tr>
    </table>
  </div>
</template>

<script>
export default {
  props: {
    contents: {
      type: Array,
      default: () => []
    }
  }
};
</script>

<style scoped>
.contents {
  border: 1px solid gray;
}
.contents th,
.contents td {
  border: 1px solid gray;
}
</style>
