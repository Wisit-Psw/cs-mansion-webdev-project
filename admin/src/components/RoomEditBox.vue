<script setup>
import { reactive } from "vue";
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
const logDate = () => {
    console.log(document.getElementById("date").value);
};
const submit = (event) => {
    event.preventDefault();
    alert("ยืนยัน");
    isEdit.state = false;
}
</script>
<template>
    <!-- data ถ้า edit state เป็น false ( เมื่อยังไม่กด edit )-->
    <div class="dataTable tr" v-if="!isEdit.state">
        <div class="td roomNumber">{{ props.item.RoomID }}</div>
        <div class="td price">{{ props.item.RoomPrice }}</div>
        <div class="td type">{{ props.item.RoomTypeName }}</div>
        <div class="td status">{{ props.item.RoomStatusName }}</div>
        <div class="td detail">{{ props.item.RoomDetail }}</div>
        <div class="td edit" @click="onEditBTNClick()">
            <div class="editBTN">แก้ไข</div>
        </div>
    </div>

    <div class="" style="width: 100%; text-align: center; display: flex;" v-if="isEdit.state">
        
        
          <form @submit="submit">
            <div class="dataTable tr">
                <input class="td roomNumber" style="font-size: 1rem; text-align: center;" :value="props.item.RoomID">
                <input class="td price" style="font-size: 1rem; text-align: center;" :value="props.item.RoomPrice">
                <input class="td type" style="font-size: 1rem; text-align: center;" :value="props.item.RoomTypeName">
                <input class="td status" style="font-size: 1rem; text-align: center;" :value="props.item.RoomStatusName">
                <input class="td detail" style="font-size: 1rem; text-align: center;" :value="props.item.RoomDetail">
            </div>
            <div class="dataTable tr" style="width: 40%; justify-content:space-around; margin:0 auto;">
              <div class="td edit">
                <input style="border: none; font-size: 1rem;" type="submit" class="editBTN" value="ยืนยัน">
              </div>
              <div class="td edit" @click="onEditBTNClick()">
                <div style="font-size: 1rem;" class="editBTN">ปฎิเสธ</div>
              </div>
            </div>
          </form>
        
    
      </div>
</template>


<style scoped>
.editBTN {
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
.type,
.price,
.status {
    width: 20%;
}
.edit {
    width: 20%;
  }
</style>