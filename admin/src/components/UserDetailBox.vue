<script setup>
import { reactive } from "vue";
const props = defineProps(["item"]);
const isEdit = reactive({ state: false });

const onEditBTNClick = () => {
    isEdit.state = !isEdit.state;
};
const submit = (event) => {
    event.preventDefault();
    // console.log(event.target.expensesUnit[0].id);
    isEdit.state = false;
}
</script>

<template>
    <div class="dataTable tr" v-if="!isEdit.state">
        <div class="td roomNumber">{{ props.item.UserName }}</div>
        <div class="td date">{{ props.item.UserPhone }}</div>
        <div class="td totalPrice">{{ props.item.UserAddress }}</div>
        <div class="td status">{{ props.item.RoomID }}</div>
        <div class="td detail" @click="onEditBTNClick()">
            <div class="detailBTN">แก้ไข</div>
        </div>
    </div>

    <div class="dataTable tr" v-else >
        <input class="td roomNumber" :value="props.item.UserName" />
        <input class="td date" :value="props.item.UserPhone" />
        <input class="td totalPrice" :value="props.item.UserAddress" />
        <input class="td status" :value="props.item.RoomID" disabled />
        
    </div>
    <div style="width:50%; text-align: center;margin: 1rem auto;" v-if="isEdit.state">
        <form @submit="submit">
            <div style="width: 100%;display: flex;justify-content: space-around;" >
                <div class="td detail" @click="onEditBTNClick()">
                    <input style="border: none; font-size: 1rem;" type="submit" class="detailBTN" value="ยืนยัน">
                </div>
                <div class="td detail" @click="onEditBTNClick()">
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

.tr>.td {
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
.detail-button{
    width: 6%;
}
.button-box{
     display: flex ;
     flex-direction: row-reverse;
}

</style>