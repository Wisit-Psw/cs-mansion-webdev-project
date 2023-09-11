<script setup>
import Sidebar from './components/Sidebar.vue';
import { teamColor } from './module/team.js';
</script>

<template>
  <div class="container" :style="`--bgColor:${teamColor.bgColor};
      --textColor:${teamColor.textColor};
      --menuColor:${teamColor.menuColor};
      --menuShadowColor:${teamColor.menuShadowColor};
      --menuSelectedColor:${teamColor.menuSelectedColor};`">
    <aside class="navContainer">
      <Sidebar />
    </aside>
    <div class="page">
      <router-view />
    </div>
  </div>
</template>

<style scoped>
.container {
  width: 100%;
  height: 100%;
  display: block;
}

.navContainer {
  width: 100%;
  border-right: 1px solid var(--menuSelectedColor);
  height: fit-content;
}

.page {
  width: 100%;
}

@media screen and (min-width:826px) {
  .container {
    display: flex;
  }

  .navContainer {
    width: 20vw;
    height: 100dvh;
  }

  .page {
    width: 80vw;
    padding: 1rem;
  }
}
</style>
