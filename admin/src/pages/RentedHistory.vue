<script setup>
import { reactive, onMounted } from "vue";
import RentedHistoreBox from "../components/RentedHistoreBox.vue";
import axios from "axios";
// import { BillData, RoomData, BillStatus, BillExpensesJoin } from "../../../Ex-data/data.js";
const emit = defineProps(['dropdownData'])
const data = reactive({
  Renting: []
})
const isModalShow = reactive({ state: false });
const queryUser = async () => {
  const response = await axios.get("http://localhost:3001/api/admin/renting");
  data.Renting = await response.data;
}
const onDetailCLick = () => {
  isModalShow.state = !isModalShow.state;
}
onMounted(async () => {
  await queryUser()
})
</script>

<template>
  <div class="modal" v-if="isModalShow.state">
    <div class="backdrop" @click="onDetailCLick()"></div>
    <div class="madal">
      <div class="modal-header">
        ห้องพัก {{ props.item.RoomID }}
      </div>
      <div class="modal-body">
        <div class="modal-context"> วันที่ {{ props.item.BillDate }}</div>
        <div class="modal-context">ค่าห้องพัก : {{ props.item.BillTotalPrice }}</div>
        <div class="modal-context">ค่าน้ำ : {{ props.item.BillWaterPrice }}</div>
        <div class="modal-context">ค่าไฟ : {{ props.item.BillElectricPrice }}</div>
        <input class="modal-context" type="file" accept="image/*">
      </div>
      <div class="modal-footer">
        <div class="btn-wrap">
          <button class="btn btn-red" @click="onDetailCLick()">ยกเลิก</button>
          <button class="btn btn-blue" @click="submit()">ยืนยัน</button>
        </div>
      </div>
    </div>
  </div>
  <section class="container">
    <header class="header">
      รายการเช่าห้องพัก:
    </header>
    <div class="table">
      <div class="thead">
        <div class="tr">
          <div class="th roomNumber">เลขห้อง</div>
          <div class="th date">ชื่อ</div>
          <div class="th date">ราคาห้อง</div>
          <div class="th date">ชนิดห้อง</div>
          <div class="th totalPrice">เริ่มเช่า</div>
          <div class="th status">หยุดเช่า</div>
          <div class="th detail"></div>
        </div>
      </div>
      <div class="tbody">
        <div v-for="(item, index) in data.Renting" :key="index" class="dataTable tr">
          <RentedHistoreBox :item="item" />
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>

.madal {
  background-color: white;
  padding: 1.5rem 2rem;
  border-radius: 0.5rem;
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 5;
}

.modal-header {
  border-bottom: 1px solid rgb(211, 211, 211);
  text-align: center;
  padding: 0.5rem 0;
}

.modal-body {
  min-width: 20rem;
  text-align: center;
  padding: 2rem 0;
  align-items: center;
  margin: 0 auto;
}

.modal-context {
  align-items: center;
  margin: 0 auto;
  width: fit-content;
  width: 60%;
  padding: 1% 0;
}

.modal-footer {
  padding: 0.5rem 0 1rem 0;
}

.btn-wrap {
  display: flex;
  align-items: center;
  justify-content: space-around;
}

.backdrop {
  width: 100dvw;
  height: 100dvh;
  top: 0%;
  left: 0%;
  background-color: rgba(120, 120, 120, 0.3);
  position: fixed;
  z-index: 4;
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