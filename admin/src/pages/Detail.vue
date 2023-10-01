<script setup>
import {MansionDetail} from '../../../Ex-data/data'

</script>

<template>
  <div class="container">
    <header class="header">รายละเอียดหอพัก:</header>
    <div class="table-wrap">
      <div class="tableBox" v-for="(item, index) in MansionDetail" :key="index">
        <div class="table">
          <div class="thead">
            <div class="tr">
              {{ item?.DetailName }}
            </div>
          </div>
          <div class="tbody">
            <div class="td detail">{{ item?.Price }}</div>
            <div class="td edit">
              <div class="editBTN">แก้ไข</div>
            </div>
          </div>
        </div>
      </div>
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
.tableBox{
  width: 15rem;
}
.table-wrap {
  display: block;
  flex-wrap: wrap;

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

.table {
  width: 30rem;
  font-size: 1rem;
  border-spacing: 0;
  text-align: center;
  margin: 1rem auto 0 auto;
  border-collapse: collapse;
  /* เพิ่ม ขอบให้กล่อง */
  border-radius: 0.3rem;
  white-space: nowrap;
  text-overflow: ellipsis;
  box-shadow: 2px 2px 2px 2px var(--menuSelectedColor);
}

.thead {
  color: var(--bgColor);
  border-radius: 0.5rem 0.5rem 0 0;
  background-color: var(--menuColor);
  width: 100%;
}

.tbody {
  border-radius: 0 0 0.5rem 0.5rem;
  display: flex;
}

.tr {
  display: flex;
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
.detail,
.edit {
  width: 20%;
}

@media screen and (min-width: 826px) {
  .header {
    display: block;
  }

  .table {
    font-size: 1.2rem;
  }

  .tbody {
    max-height: 70dvh;
    overflow-y: auto;
  }
}

@media screen and (min-width: 1200px) {


  .table {
    width: 90%;
  }

  .th {
    font-size: 1.5rem;
  }
}
</style>
