<script setup>

import { BillData, RoomData, BillStatus, BillExpensesJoin } from "../../../Ex-data/data.js";
import BillDeatailBox from "../components/BillDeatailBox.vue";
const isEdit = {}

const onDetailBTNClick = (id) => {
  const Element = document.getElementById(id);
  if (Element.style.display == "flex") {
    Element.style.display = "none";
  } else {
    Element.style.display = "flex";
  }
};
const onEditBTNClick = (index) => {
  console.log(index, isEdit, isEdit[index])
  // console.log("before"+isEdit[index])
  isEdit[index] = !isEdit[index]
  // console.log("after"+isEdit[index])
  console.log(index, isEdit, isEdit[index])
}
const logDate = () => { console.log(document.getElementById('date').value) }
</script>

<template>
  <section class="container">
    <header class="header">บิลค่าเช่า:</header>
    <div class="filterBar">
      <div class="filter-wrap">
        <label for="RoomID">เลขห้อง: </label>
        <select name="RoomID" id="RoomIDFilter">
          <option value="All">ทั้งหมด</option>
          <option v-for="(item, index) in RoomData" :key="index" :value="item.RoomID">
            {{ item.RoomID }}
          </option>
        </select>
      </div>
      <div class="filter-wrap">
        <label for="RoomID">ปี: </label>
        <select name="RoomID" id="RoomIDFilter">
          <option value="All">ทั้งหมด</option>
          <option v-for="(item, index) in BillData" :key="index" :value="item.BillDate">
            {{ item.BillDate }}
          </option>
        </select>
      </div>
      <div class="filter-wrap">
        <label for="RoomID">เดือน: </label>
        <select name="RoomID" id="RoomIDFilter">
          <option value="All">ทั้งหมด</option>
          <option v-for="(item, index) in BillData" :key="index" :value="item.BillDate">
            {{ item.BillDate }}
          </option>
        </select>
      </div>
      <div class="filter-wrap">
        <label for="status">สถานะ: </label>
        <select name="status" id="RoomIDFilter">
          <option value="All">ทั้งหมด</option>
          <option v-for="(item, index) in BillStatus" :key="index" :value="item.BillStatusID">
            {{ item.BillStatusName }}
          </option>
        </select>
      </div>
    </div>
    <!-- {{ BillData }} -->
    <div class="table">
      <div class="thead">
        <div class="tr">
          <div class="th roomNumber">เลขห้อง</div>
          <div class="th date">วันที่</div>
          <div class="th totalPrice">ราคารวม</div>
          <div class="th status">สถานะ</div>
          <div class="th detail">รายละเอียด</div>
        </div>
      </div>
      <div class="tbody">
        <div class="Trow" v-for="(item, index) in BillExpensesJoin" :key="index">
          <BillDeatailBox :item="item" />
        </div>
      </div>
    </div>
  </section>
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

.filterBar {
  width: 95%;
  display: flex;
  margin: 0 auto;
  font-size: 1rem;
  align-items: center;
  color: var(--bgColor);
  border-radius: 0.5rem;
  justify-content: space-around;
  background-color: var(--menuColor);
  box-shadow: 0px 3px 2px var(--menuSelectedColor);
}

.filter-wrap {
  padding: 0.2rem;
}

.filter-wrap>label {
  margin-right: 0rem;
}

.filter-wrap>select {
  font-size: 0.8rem;
  padding: 0 0.2rem;
  border-radius: 0.5rem;
  border-color: var(--menuColor);
}

.table {
  width: 95%;
  font-size: 1rem;
  border-spacing: 0;
  text-align: center;
  margin: 1rem auto 0 auto;
  border-collapse: collapse;
}

.thead {
  color: var(--bgColor);
  border-radius: 0.5rem 0.5rem 0 0;
  background-color: var(--menuColor);
}

.tbody {
  max-height: 75dvh;
  overflow-y: auto;
  border-radius: 0 0 0.5rem 0.5rem;
}

::-webkit-scrollbar {
  width: 5px;
}

::-webkit-scrollbar-track {
  background-color: transparent;
}

::-webkit-scrollbar-thumb {
  background-color: #b6b5b5;
  border-radius: 10px;
}

::-webkit-scrollbar-thumb:hover {
  background-color: #dbdada;
}

.tr {
  display: flex;
  padding: 0.2rem 0.5rem;
}

.th {
  padding: 0.2rem 0.5rem;
  width: fit-content;
  font-weight: bold;
  display: flex;
  align-items: center;
  justify-content: space-around;
}

.tbody> :nth-child(even) {
  background-color: rgb(233, 232, 232);
}

.tbody>.tr>.td {
  padding: 0.5rem 0.5rem;
}

.roomNumber,
.date,
.totalPrice,
.status {
  width: 20%;
}

.detail {
  width: 20%;
}

/* กลาง */
@media screen and (min-width: 826px) {
  .header {
    display: block;
  }

  .filterBar {
    margin: 0 auto;
    font-size: 1.2rem;
    min-width: fit-content;
    padding: 0.2rem 0.5rem;
  }

  .filter-wrap {
    margin: 0.5rem 0rem;
    padding: 0.1rem 0.3rem;
  }

  .filter-wrap>label {
    margin-right: 0rem;
  }

  .filter-wrap>select {
    font-size: 1rem;
    width: 5.5rem;
    padding: 0 0.5rem;
    border-color: var(--menuColor);
  }

  .table {
    font-size: 1.2rem;
  }

  .th {
    font-size: 1.4rem;
  }

  .tbody {
    max-height: 70dvh;
    overflow-y: auto;
  }
}

/* ใหญ่ */
@media screen and (min-width: 1200px) {
  .filterBar {
    width: 60%;
    min-width: 800px;
  }

  .filter-wrap>select {
    padding: 0 0.5rem;
    width: 7.5rem;
  }

  .table {
    width: 90%;
  }

  .th {
    font-size: 1.5rem;
  }
}
</style>
