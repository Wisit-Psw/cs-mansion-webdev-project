<script setup>
import { MansionDetail } from '../../../Ex-data/data';
import DetailBox from '../components/DetailBox.vue';
// // import  onMounted from 'vue';
// import switchModule from './module/swith.js';
// v-for="(item, index) in MansionDetail" :key="index"
// const { onModeChange } = defineEmits(['onModeChange']);
</script>

<template>
  <div class="container">
    <header class="header">รายละเอียดหอพัก:</header>
    <div class="table-wrap">
      <div class="tableBox" v-for="(item, index) in MansionDetail" :key="index">
        <DetailBox :DetailName="item.DetailName" :DetailPrice="item.DetailPrice" />
      </div>
    </div>
  </div>
</template>

<style scoped>
.container {
  width: 100%;
  height: 100%;
  display: block;
}

.header {
  font-size: 2rem;
  font-weight: 1000;
  margin-top: 0.5rem;
  display: none;
}

.tableBox {
  margin-bottom: 2%;
  /* width: 70%; */
}

.table-wrap {
  /* display: flex; */
}

.open .toggle-container {
  /* สไตล์เมื่อ toggle เปิด */
  border-color: green;
  /* ตัวอย่างสีเขียว */
}


@media screen and (min-width: 826px) {
  .header {
    display: block;
  }

}

@media screen and (min-width: 1200px) {}
</style>
