<script setup>
import { reactive } from 'vue';
const props = defineProps(["item"]);
const isEdit = reactive({ state: false });
const isDetailShow = reactive({ state: false });

const onDetailBTNClick = () => {
  isDetailShow.state = !isDetailShow.state;
  isEdit.state = false;
};
const onEditBTNClick = () => {
  isEdit.state = !isEdit.state;
};
const submit = (event) => {
  event.preventDefault();
  alert("ยืนยัน");
}
</script>

<template>
  <div class="dataTable tr">
    <div class="td roomNumber">{{ props.item.RoomID }}</div>
    <div class="td date">{{ props.item.BillDate }}</div>
    <div class="td totalPrice">{{ props.item.BillTotalPrice }}</div>
    <div class="td status">{{ props.item.BillStatusName }}</div>
    <div class="td detail" @click="onDetailBTNClick()">
      <div class="detailBTN">รายละเอียด</div>
    </div>
  </div>

  <div class="" style="width: 100%; text-align: center; display: flex;" v-if="isDetailShow.state">
    <div class="imageBill" style="width: 40%;">
      <img
        src="https://media.licdn.com/dms/image/D4D0BAQEadGTydTHpOA/company-logo_200_200/0/1695133131366?e=2147483647&amp;v=beta&amp;t=Y3nwMCbtyn24SfA1tma3Ju8Sc6uzAsLK3bBClorfxLY"
        jsaction="VQAsE" class="sFlh5c pT0Scc iPVvYb" style="max-width: 200px; height: 200px; margin: 0px; width: 200px;"
        alt="IMG Golf Course Services | LinkedIn" jsname="kn3ccd" data-iml="26407.29999999702" aria-hidden="false">
    </div>
    <div class="Table" style="width: 60%;">
      <form @submit="submit">
        <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;">
          <div class="td waterUnit">จำนวนยูนิตน้ำ</div>
          <div class="td waterUnit">{{ props.item.BillWaterUnit }}</div>
        </div>
        <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;">
          <div class="td electricUnit">จำนวนยูนิตไฟ</div>
          <div class="td electricUnit">{{ props.item.BillElectricUnit }}</div>
        </div>

        <div class="dataTable tr" style="width: 40%; justify-content:space-between; margin:0 auto;"
          v-for="(expen, index) in props.item.Expenses" :key="index">
          <div class="td expensesUnit">{{ expen.ExpenTitle }}</div>
          <div class="td expensesUnit">{{ expen.ExpenPrice }}</div>
        </div>
        <div class="dataTable tr" style="width: 40%; justify-content:space-around; margin:0 auto;">
          <div class="td detail">
            <input style="border: none; font-size: 1rem;" type="submit" class="detailBTN" value="ยืนยัน">
          </div>
          <div class="td detail">
            <div style="font-size: 1rem;" class="detailBTN">ปฎิเสธ</div>
          </div>
        </div>
      </form>
    </div>

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