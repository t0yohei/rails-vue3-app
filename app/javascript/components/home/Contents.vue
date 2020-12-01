<template>
  <div>
    <table class="contents-table">
      <tr>
        <th>名前</th>
        <th>リンク</th>
      </tr>
      <tr v-for="outer_link in contents.outer_links" v-bind:key="outer_link.name">
        <td>{{ outer_link.name }}</td>
        <td>
          <a v-bind:href="outer_link.url">{{ outer_link.text }}</a>
        </td>
      </tr>
    </table>
    <div v-for="inner_link in contents.inner_links" v-bind:key="inner_link.label">
      <button v-on:click="changeLocation(inner_link.url)" class="btn-push">{{ inner_link.label }}</button>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    contents: {
      type: Object,
      default: () => {}
    }
  },
  methods: {
    changeLocation(url) {
      window.location.href = url;
    }
  }
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
.btn-push {
  margin: 10px;
  max-width: 180px;
  text-align: left;
  background-color: rgb(24, 174, 238);
  font-size: 14px;
  color: #fff;
  text-decoration: none;
  font-weight: bold;
  padding: 10px 24px;
  border-radius: 4px;
  border-bottom: 4px solid rgb(24, 174, 238);
}
.btn-push:active {
  transform: translateY(4px);
  border-bottom: none;
}

</style>
