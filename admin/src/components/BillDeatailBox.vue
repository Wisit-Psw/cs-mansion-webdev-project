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
  <div class="dataTable tr" v-if="!isEdit.state">
    <div class="td roomNumber">{{ props.item.RoomID }}</div>
    <div class="td date">{{ props.item.BillDate }}</div>
    <div class="td totalPrice">{{ props.item.BillTotalPrice }}</div>
    <div class="td status">{{ props.item.BillStatusName }}</div>
    <div class="td detail" @click="onDetailBTNClick()">
      <div class="detailBTN">รายละเอียด</div>
    </div>
  </div>
  <div class="dataTable tr" v-else>
    <input class="td roomNumber" :value="props.item.RoomID" disabled />
    <input class="td date" :value="props.item.BillDate" />
    <input class="td totalPrice" :value="props.item.BillTotalPrice" />
    <input class="td status" :value="props.item.BillStatusName" />
    <div class="td detail" @click="onDetailBTNClick()">
      <div class="detailBTN">รายละเอียด</div>
    </div>
  </div>
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

.filter-wrap {
  padding: 0.2rem;
}

.filter-wrap > label {
  margin-right: 0rem;
}

.filter-wrap > select {
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
.td {
  display: flex;
  align-items: center;
  justify-content: space-around;
}

.tbody > :nth-child(even) {
  background-color: rgb(233, 232, 232);
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

  .filter-wrap > label {
    margin-right: 0rem;
  }

  .filter-wrap > select {
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

  .filter-wrap > select {
    padding: 0 1.5rem;
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
