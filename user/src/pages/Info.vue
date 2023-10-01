<script setup>
import {  RentingData } from "../../../Ex-data/data.js"


</script>

<template>
  <div class="container">
    <header class="header">
      ข้อมูลอื่นๆ:
    </header>
    <div class="table">
      <div class="tbody">
        <div class="topic">ข้อมูลห้องพัก</div>
        <div class="tr">
          <div class="td head">เลขห้อง</div> <div class="td context">{{ RentingData[0].RoomID }}</div>
          <div class="td head">ข้อมูลห้อง</div> <div class="td context">{{ RentingData[0].RoomDetail }}</div>
          <div class="td head">ประเภทห้อง</div> <div class="td context">{{ RentingData[0].RoomTypeID }}</div>
          <div class="td head">ราคาห้อง</div> <div class="td context">{{ RentingData[0].RoomPrice }}</div>
          <div class="td head">เริ่มเช่าตั้งแต่วันที่</div> <div class="td context">{{ RentingData[0].RentingStart }}</div>
        </div>
      </div>
    </div>
    <div class="table">
      <div class="tbody">
        <div class="topic">ข้อมูลห้องพักผู้เช่า</div>
        <div class="tr">
          <div class="td head">ชื่อ</div> <div class="td context">{{ RentingData[0].UserName }}</div>
          <div class="td head">เบอร์โทรศัพท์</div> <div class="td context">{{ RentingData[0].UserPhone }}</div>
          <div class="td head">ที่อยู่</div>  <div class="td context">{{ RentingData[0].UserAddress }}</div>
         
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



.filterBar {
  width: 80%;
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


.table {
  display: block;
  width: 70%;
  align-items: center;
  margin: 0 auto;
  margin-top: 2%;
  margin-bottom: 2%;
  border-radius: 0.5rem;
  padding: 0.5rem;
  box-shadow: 2px 2px 2px 2px var(--menuSelectedColor);
}



.tbody {
  overflow-y: auto;
  border-radius:0 0 0.5rem 0.5rem ;
  justify-content: space-around;  
  margin: 0 auto;
  margin-left: 3%;
  margin-top: 1.5%;
}

.topic{
  font-size: 1.2rem;
  margin-bottom: 0.5%;
}

.tr {
  display: flex;
  flex-wrap: wrap;
  margin-bottom: 0.5rem;
}


.td {
  text-align: left;
  display: flex;
  margin-top: 0.5%;
  margin-bottom: 0.5%;
  width: 50%;
  align-items: stretch;
}

.head{
  width: 60%;
}

.context{
  width: 40%;
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

  .topic{
  font-size: 1.4rem;
  margin-bottom: 0.5%;
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

  .th {
    font-size: 1.5rem;
  }

  .topic{
  font-size: 1.5rem;
  margin-bottom: 0.5%;
}

}
</style>

