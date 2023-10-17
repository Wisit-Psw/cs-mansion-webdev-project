<script setup>
import {  RoomData, RoomStatus } from "../../../Ex-data/data.js"
import RoomEditBox from "../components/RoomEditBox.vue";
</script>

<template>
  <section class="container">
    <header class="header">
      ห้องพัก:
    </header>
    <div class="filterBar">
      <div class="filter-wrap">
        <label for="RoomID">เลขห้อง: </label>
        <select name="RoomID" id="RoomIDFilter">
          <option value="All">ทั้งหมด</option>
          <option v-for="(item, index) in RoomData" :key="index" :value="item.RoomID">{{ item.RoomID }}</option>
        </select>
      </div>
      <div class="filter-wrap">
        <label for="RoomID">สถานะ: </label>
        <select name="RoomID" id="RoomIDFilter">
          <option value="All">ทั้งหมด</option>
          <option v-for="(item, index) in RoomStatus" :key="index" :value="item.RoomStatusID">{{ item.RoomStatusName }}
          </option>
        </select>
      </div>
    </div>
    <!-- {{ BillData }} -->
    <div class="table">
      <div class="thead">
        <div class="tr">
          <div class="th roomNumber">เลขห้อง</div>
          <div class="th date">ราคา</div>
          <div class="th totalPrice">ประเภท</div>
          <div class="th status">สถานะ</div>
          <div class="th detail">รายละเอียด</div>
          <div class="th edit">แก้ไข</div>
        </div>
      </div>
      <div class="tbody">
        <div class="Trow" v-for="(item, index) in RoomData" :key="index">
          <RoomEditBox :item="item"/>
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

.editBTN {
  margin: 0 auto;
  color: white;
  cursor: pointer;
  font-weight: bold;
  width: fit-content;
  padding: 0.2rem 0.5rem;
  background-color: var(--btnColor);
  border-radius: 0.3rem;
  white-space: nowrap;
  text-overflow: ellipsis;
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
  border-radius:0 0 0.5rem 0.5rem ;

}

.tr {
  display: flex;
}

.th {
  padding: 0.2rem 0.5rem;
  width: fit-content;
  font-weight: bold;
  display: flex;
  align-items: center;
  justify-content: space-around;
}

.td {
  display: flex;
  align-items: center;
  justify-content: space-around;
}

.tbody>:nth-child(even) {
  background-color: rgb(233, 232, 232);
}

.tbody>.tr>.td {
  padding: 0.5rem 0.5rem;
}

.roomNumber,
.date,
.totalPrice,
.detail,
.status {
  width: 20%;
  margin:auto 0;
  display: block;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}

.edit {
  width: 20%;
}

@media screen and (min-width:826px) {
  .header {
    display: block;
  }

  .filterBar {
    margin: 0 auto;
    font-size: 1.2rem;
    width: fit-content;
    padding: 0.2rem 0.5rem;
  }

  .filter-wrap {
    margin: 0.5rem 3rem;
  }

  .filter-wrap>label {
    margin-right: 0.5rem;
  }

  .filter-wrap>select {
    font-size: 1rem;
    padding: 0 1.5rem;
    border-radius: 0.5rem;
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

@media screen and (min-width:1200px) {
  .filterBar {
    width: 60%;
    min-width: 800px;
  }

  .filter-wrap>select {
    padding: 0 2rem;
  }
  .table{
    width: 90%;
  }
  
  .th {
    font-size: 1.5rem;
  }
}</style>
