<script setup>
import { BillData, RoomData, BillStatus, RentingData } from "../../../Ex-data/data.js";
import { reactive } from "vue";
import AddIcon from "../icon/AddIcon.vue";
const props = defineProps(["item","index"]);
const isEdit = reactive({ state: false });
const isAdd = reactive({ state: false });
const isDetailShow = reactive({ state: false });

const onDetailBTNClick = () => {
  isDetailShow.state = !isDetailShow.state;
};

const onAddlBTNClick = () => {
  const container = document.createElement("div")
  container.class = "dataTable tr";
  container.style = "width: 100%;display:flex; justify-content:space-between; margin:0.5rem 0;";

  const expensesName = document.createElement("input")
  expensesName.type = "text";
  expensesName.class = "td expensesUnit";
  expensesName.name = "expensesName";
  expensesName.style = "font-size:1.05rem;width:60%;margin-left:auto;margin-right:2rem;";
  expensesName.pattern = "[ก-๙]*";
  expensesName.title = "กรุณากรอกเฉพาะภาษาไทย";

  const expensesPrice = document.createElement("input")
  expensesPrice.type = "number";
  expensesPrice.class = "td expensesUnit";
  expensesPrice.name = "expensesPrice";
  expensesPrice.style = "height: 70%; width: 20%; font-size: 1rem;font-size:1.05rem;";
  expensesPrice.title = "กรุณากรอกเฉพาะภาษาไทย";

  container.appendChild(expensesName);
  container.appendChild(expensesPrice);
  document.getElementById("expensesInputContainer"+props.index).appendChild(container);
};

const submit = (event) => {
  event.preventDefault();
  console.log(event.target.expensesUnit[0].id);
  // isDetailShow.state = false;
}
</script>

<template>
  <!-- data ถ้า edit state เป็น false ( เมื่อยังไม่กด edit )-->
  <div class="dataTable tr">
    <div class="td roomNumber">{{ props.item.RoomID }}</div>
    <div class="td date">{{ props.item.RoomPrice }}</div>
    <div class="td detail" @click="onDetailBTNClick()">
      <div class="detailBTN">รายละเอียด</div>
    </div>
  </div>

  <!-- show -->
  <div style="width: 100%; text-align: center" v-if="isDetailShow.state">
    <form @submit="submit">
      <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;">
        <div class="td waterUnit">จำนวนยูนิตน้ำ</div>
        <input name="waterUnit" class="td waterUnit" style="height: 70%; width: 20%; font-size: 1rem;">
      </div>
      <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;">
        <div class="td electricUnit">จำนวนยูนิตไฟ</div>
        <input name="electricUnit" class="td electricUnit" style="height: 70%; width: 20%; font-size: 1rem;">
      </div>
      <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;"
        v-for="(expen, index) in props.item.Expenses" :key="index">
        <div class="td expensesUnit">{{ expen.ExpenTitle }}</div>
        <input name="expensesUnit" :id="expen.ExpenID" class="td expensesUnit"
          style="height: 70%; width: 20%; font-size: 1rem;">
      </div>
      <!-- add -->
      <div class="dataTable" :id="'expensesInputContainer'+props.index"
        style="width: 40%; justify-content:space-between; margin:0 auto;">
      </div>

      <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;"
        v-if="isDetailShow.state">
        <div class=" td detail add">
          <div @click="onAddlBTNClick()">
            <AddIcon />
          </div>
        </div>
      </div>

      <div class="dataTable tr" style="width: 40%;margin:0 auto;">
        <div class="td detail" v-if="isDetailShow.state">
          <input style="border: none; font-size: 1rem;" type="submit" class="detailBTN" value="ยืนยัน">
        </div>
        <div class="td detail" @click="onDetailBTNClick()" v-if="isDetailShow.state">
          <div style="font-size: 1rem;" class="detailBTN">ยกเลิก</div>
        </div>
      </div>
    </form>
  </div>
</template>

<style scoped>
.detailBTN {
  margin: 0 auto;
  color: white;
  cursor: pointer;
  font-weight: bold;
  width: fit-content;
  padding: 0.1rem 0.3rem;
  background-color: var(--btnColor);
  border-radius: 0.3rem;
  white-space: nowrap;
  text-overflow: ellipsis;
}

.tr {
  display: flex;
  padding: 0.2rem 0.5rem;
}

.td {
  display: flex;
  align-items: center;
  justify-content: space-around;
  margin-left: 8.25%;
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

.add {
  width: 2rem;
  margin: 0 auto;
  cursor: pointer;
}

</style>
