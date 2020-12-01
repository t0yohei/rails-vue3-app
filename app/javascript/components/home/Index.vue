<template>
  <div>
    <h1>{{ initialData.title }}</h1>
    <p>{{ initialData.description }}</p>
    <table class="contents-table">
      <tr>
        <th>名前</th>
        <th>リンク</th>
      </tr>
      <tr v-for="outer_link in initialData.contents.outer_links" v-bind:key="outer_link.name">
        <td>{{ outer_link.name }}</td>
        <td>
          <a v-bind:href="outer_link.url">{{ outer_link.text }}</a>
        </td>
      </tr>
    </table>
  </div>
</template>

<script>
export default {
  props: {
    initialData: {
      type: Object,
      default: () => {}
    }
  },
};
</script>

<style scoped>
.contents-table {
  border: 1px solid gray;
  margin: 10px;
}
.contents-table th,
.contents-table td {
  border: 1px solid gray;
}
</style>
