<script setup>
import { reactive,onMounted } from 'vue';
import UserDetailBox from "../components/UserDetailBox.vue"
import axios from "axios"
const data = reactive({
  RentingData: [],
});
const queryUser = async () => {
  try {
    const response = await axios.get("http://localhost:3001/api/admin/user");
    data.RentingData = await response.data
  } catch (error) {
    console.error("Error fetching renting data:", error);
  }
}
onMounted(async () => {
  await queryUser()
})

</script>

<template>
  <section class="container">
    <header class="header">
      ผู้เช่า:
    </header>
    <div class="table">
      <div class="thead">
        <div class="tr">
          <div class="th roomNumber">ชื่อผู้เช่า</div>
          <div class="th date">เบอร์โทรศัพท์</div>
          <div class="th totalPrice">ที่อยู่</div>
          <div class="th detail">แก้ไข</div>
        </div>
      </div>
      <div class="tbody">
        <div class="Trow" v-for="(item, index) in data.RentingData" :key="index">
          <UserDetailBox :item="item" />
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

.detailBTN {
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
