import { createApp } from "vue";
import Index from "../../components/home/Index.vue";

document.addEventListener("DOMContentLoaded", () => {
  const node = document.getElementById("homeIndex");
  const initialData = JSON.parse(node.getAttribute("data"));
  const app = createApp(Index, { initialData: initialData })
  app.mount("#homeIndex");
});
