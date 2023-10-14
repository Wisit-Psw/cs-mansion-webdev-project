<script setup>
import { BillData, RoomData, BillStatus } from "../../../Ex-data/data.js";
import { reactive } from "vue";
const props = defineProps(["item"]);
const isEdit = reactive({ state: false });
const isDetailShow = reactive({ state: false });

const onDetailBTNClick = () => {
  isDetailShow.state = !isDetailShow.state;
};
const onEditBTNClick = () => {
  isEdit.state = !isEdit.state;
};
const logDate = () => {
  console.log(document.getElementById("date").value);
};
</script>

<template>
  <!-- data ถ้า edit state เป็น false -->
  <div class="dataTable tr" v-if="!isEdit.state">
    <div class="td roomNumber">{{ props.item.RoomID }}</div>
    <div class="td date">{{ props.item.BillDate }}</div>
    <div class="td totalPrice">{{ props.item.BillTotalPrice }}</div>
    <div class="td status">{{ props.item.BillStatusName }}</div>
    <div class="td detail" @click="onDetailBTNClick()">
      <div class="detailBTN">รายละเอียด</div>
    </div>
  </div>
  <!-- data ถ้า edit state เป็น true -->
  <div class="dataTable tr" v-else>
    <input class="td roomNumber" :value="props.item.RoomID" disabled />
    <input class="td date" :value="props.item.BillDate" disabled />
    <input class="td totalPrice" :value="props.item.BillTotalPrice" />
    <input class="td status" :value="props.item.BillStatusName" />
    <!-- BTN detail  -->
    <div class="td detail" @click="onDetailBTNClick()">
      <div class="detailBTN">รายละเอียด</div>
    </div>
  </div>
  <!-- show -->
  <div style="width: 100%; text-align: center" v-if="isDetailShow.state">
    <div class="td detail" @click="onEditBTNClick()" v-if="!isEdit.state">
      <div class="detailBTN">edit</div>
    </div>
    <div class="td detail" @click="onEditBTNClick()" v-if="isEdit.state">
      <div class="detailBTN">submit</div>
    </div>
    <div class="td detail" @click="onEditBTNClick()" v-if="isEdit.state">
      <div class="detailBTN">cancle</div>
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
.tbody > .tr > .td {
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
