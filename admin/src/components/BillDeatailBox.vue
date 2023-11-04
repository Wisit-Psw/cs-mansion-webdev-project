<script setup>
// import { BillData, RoomData, BillStatus } from "../../../Ex-data/data.js";
import { reactive ,onMounted} from "vue";
const props = defineProps(["item"]);
const isEdit = reactive({ state: false });
const isDetailShow = reactive({ state: false });
const data = reactive({
  expenses: undefined,
});
const onDetailBTNClick = async () => {
  isDetailShow.state = !isDetailShow.state;
  isEdit.state = false;
  if(isDetailShow.state && data.expenses===undefined){
    console.log(data.expenses)
    await queryExpenses()
  }
};
const onEditBTNClick = () => {
  isEdit.state = !isEdit.state;
};
const logDate = () => {
  console.log(document.getElementById("date").value);
};
const submit = (event) => {
  event.preventDefault();
  console.log(event.target.expensesUnit[0].id);
  isEdit.state = false;
}
const queryExpenses = async () => {
  try {
    const response = await fetch(
      "http://localhost:3001/api/Exdata/billdata/expenses?billid=" + props.item.BillID,
      { method: "GET" }
    );
    if (response.ok) {
      data.expenses = await response.json();
    } else {
      console.error("Error fetching expenses data. Status:", response.status);
    }
  } catch (error) {
    console.error("Error fetching expenses data:", error);
  }
};
onMounted(async () => {
})
</script>

<template>
  <!-- data ถ้า edit state เป็น false ( เมื่อยังไม่กด edit )-->
  <div class="dataTable tr">
    <div class="td roomNumber">{{ props.item.RoomID }}</div>
    <div class="td date">{{ props.item.BillDate }}</div>
    <div class="td totalPrice">{{ props.item.BillTotalPrice }}</div>
    <div class="td status">{{ props.item.BillStatusName }}</div>
    <div class="td detail" @click="onDetailBTNClick() ">
      <div class="detailBTN">รายละเอียด</div>
    </div>
  </div>

  <!-- show -->
  <div style="width: 100%; text-align: center" v-if="isDetailShow.state && !isEdit.state">
    <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;">
      <div class="td waterUnit">จำนวนยูนิตน้ำ</div>
      <div class="td waterUnit">{{ props.item.BillWaterUnit }}</div>
    </div>
    <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;">
      <div class="td electricUnit">จำนวนยูนิตไฟ</div>
      <div class="td electricUnit">{{ props.item.BillElectricUnit }}</div>
    </div>

    <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;"
      v-for="(expen, index) in data.expenses" :key="index">
      <div class="td expensesUnit">{{ expen.ExpenTitle }}</div>
      <div class="td expensesUnit">{{ expen.ExpenPrice }}</div>
    </div>
    <div class="dataTable tr" style="width: 40%; justify-content:space-around; margin:0 auto;">
      <div class="td detail" @click="onEditBTNClick()" v-if="!isEdit.state">
        <div class="detailBTN" style="font-size: 1rem;">แก้ไข</div>
      </div>
    </div>

  </div>

  <div style="width: 100%; text-align: center" v-if="isDetailShow.state && isEdit.state">
    <form @submit="submit">
      <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;">
        <div class="td waterUnit">จำนวนยูนิตน้ำ</div>
        <input name="waterUnit" class="td waterUnit" style="height: 70%; width: 20%; font-size: 1rem;"
          :value="props.item.BillWaterUnit">
      </div>
      <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;">
        <div class="td electricUnit">จำนวนยูนิตไฟ</div>
        <input name="electricUnit" class="td electricUnit" style="height: 70%; width: 20%; font-size: 1rem;"
          :value="props.item.BillElectricUnit">
      </div>
      <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;"
        v-for="(expen, index) in data.expenses" :key="index">
        <div class="td expensesUnit">{{ expen.ExpenTitle }}</div>
        <input name="expensesUnit" :id="expen.ExpenID" class="td expensesUnit"
          style="height: 70%; width: 20%; font-size: 1rem;" :value="expen.ExpenPrice">
      </div>

      <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;"
        v-if="isDetailShow.state && !isEdit.state" v-for="(expen, index) in data.expenses" :key="index">
        <div class="td expensesUnit">{{ expen.ExpenTitle }}</div>
        <div class="td expensesUnit">{{ expen.ExpenPrice }}</div>
      </div>

      <div class="dataTable tr" style="width: 40%; justify-content:space-around; margin:0 auto;">
        <div class="td detail" @click="onEditBTNClick()" v-if="!isEdit.state">
          <div class="detailBTN" style="font-size: 1rem;">แก้ไข</div>
        </div>
        <div class="td detail" v-if="isEdit.state">
          <input style="border: none; font-size: 1rem;" type="submit" class="detailBTN" value="ยืนยัน">
        </div>
        <div class="td detail" @click="onEditBTNClick()" v-if="isEdit.state">
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
</style>
