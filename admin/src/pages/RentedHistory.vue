<script setup>
import { reactive, onMounted } from "vue";
import RentedHistoreBox from "../components/RentedHistoreBox.vue";
// import { BillData, RoomData, BillStatus, BillExpensesJoin } from "../../../Ex-data/data.js";
const data = reactive({
  Renting: []
})
const queryUser = async () => {
  const response = await fetch("http://localhost:3001" + "/api/Exdata/renting", { method: "GET" });
  data.Renting = await response.json();
  console.log(data.Renting)
}

onMounted(async () => {
  await queryUser()
})
</script>

<template>
  <section class="container">
    <header class="header">
      รายการเช่าห้องพัก:
    </header>
    <!-- <div class="filterBar">
      <div class="filter-wrap">
        <label for="RoomID">เลขห้อง: </label>
        <select name="RoomID" id="RoomIDFilter">
          <option value="All">ทั้งหมด</option>
          <option v-for="(item, index) in RoomData" :key="index" :value="item.RoomID">{{ item.RoomID }}</option>
        </select>
      </div>
      <div class="filter-wrap">
        <label for="status">สถานะ: </label>
        <select name="status" id="RoomIDFilter">
          <option value="All">ทั้งหมด</option>
          <option v-for="(item, index) in BillStatus" :key="index" :value="item.BillStatusID">{{ item.BillStatusName }}
          </option>
        </select>
      </div>
    </div> -->
    <!-- {{ BillData }} -->
    <div class="table">
      <div class="thead">
        <div class="tr">
          <div class="th roomNumber">เลขห้อง</div>
          <div class="th date">ชื่อ</div>
          <div class="th date">ราคาห้อง</div>
          <div class="th date">ชนิดห้อง</div>
          <div class="th totalPrice">เริ่มเช่า</div>
          <div class="th status">หยุดเช่า</div>
          <div class="th detail">รายละเอียด</div>
        </div>
      </div>
      <div class="tbody">
        <div v-for="(item, index) in data.Renting" :key="index" class="dataTable tr">
          <!-- <div class="td roomNumber">{{ item.RoomID }}</div>
          <div class="td date">{{ item.UserName }}</div>
          <div class="td date">{{ item.RoomPrice }}</div>
          <div class="td date">{{ item.RoomDetail }}</div>
          <div class="td totalPrice">{{ item.RentingStart }}</div>
          <div class="td totalPrice">{{ item.RentingEnd }}</div>
          <div class="filter-wrap RentEnd" style="padding: 0; margin-left: 0.1%;">
            <select name="RentingEnd" id="RentingEndFillter" style="padding: 0;" @click="Popup()">
              <option value="null"> - </option>
              <option value="RentEnd">ย้ายออก</option>
            </select>
          </div> -->
          <RentedHistoreBox  :item="item"/>
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


.tbody>:nth-child(even) {
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

  .table {
    width: 90%;
  }

  .th {
    font-size: 1.5rem;
  }
}
</style>