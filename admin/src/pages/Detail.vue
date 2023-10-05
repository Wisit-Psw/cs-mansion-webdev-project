<script setup>
import { MansionDetail } from '../../../Ex-data/data';
import DetailBox from '../components/DetailBox.vue';
// // import  onMounted from 'vue';
// import switchModule from './module/swith.js';

// const { onModeChange } = defineEmits(['onModeChange']);
</script>

<template>
  <header class="header">รายละเอียดหอพัก:</header>
  <div class="container">
    <div class="table-wrap">
      <div class="tableBox" v-for="(item, index) in MansionDetail" :key="index">
        <DetailBox :DetailName="item.DetailName" :DetailPrice="item.DetailPrice" />
        <div class="toggle-container" >
          <div class="toggle-circle" ></div>
        </div>
      </div>

    </div>
  </div>
</template>

<style scoped>
.toggle-container {
  width: 2.5rem;
  height: 1.2rem;
  border: 1px solid var(--menuColor);
  border-radius: 1rem;
  background-color: white;
  position: absolute;
  margin-top: 0.3rem;
  margin-left: 15rem;
  top: 14%;
  transition: all 0.2s ease-out;
}
.toggle-circle{
  width: 1rem;
  height: 1rem;
  border: 1px solid var(--menuColor);
  border-radius: 50%;
  transition: all 0.2s ease-out;
  position: relative;
}

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
  width: 20rem;
}

.table-wrap {
  display: flex;
  flex-wrap: wrap;

}

.open .toggle-container {
  /* สไตล์เมื่อ toggle เปิด */
  border-color: green; /* ตัวอย่างสีเขียว */
}


@media screen and (min-width: 826px) {
  .header {
    display: block;
  }

}

@media screen and (min-width: 1200px) {}
</style>
