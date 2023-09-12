<script setup>
import { reactive } from 'vue';

const menuReactive = reactive({ isShow: false });

const onMenuIconClick = () => {
    if (menuReactive.isShow) {
        menuReactive.isShow = false;
        document.getElementById("Menu").style.display = "none";
        document.getElementById("logout").style.display = "none";
        document.getElementById("icon").style.transform = "rotate(0deg)";
    } else {
        menuReactive.isShow = true;
        document.getElementById("Menu").style.display = "block";
        document.getElementById("logout").style.display = "flex";
        document.getElementById("icon").style.transform = "rotate(90deg)";
    }
}
</script>

<template>
    <div class="navContainer">
        <div class="logo">
            <p class="text">cs mansion</p>
            <div class="icon" @click="onMenuIconClick" id="icon">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
        <div class="menu-list" id="Menu">
            <router-link to="/">
                <div class="menu-wrap">
                    หน้าแรก
                </div>
            </router-link>
            <router-link to="/bill">
                <div class="menu-wrap">
                    รายการรอยืนยัน
                </div>
            </router-link>
            <router-link to="/bill">
                <div class="menu-wrap">
                    บิลค่าเช่า
                </div>
            </router-link>
            <router-link to="/room">
                <div class="menu-wrap">
                    ห้องพัก
                </div>
            </router-link>
            <router-link to="/user">
                <div class="menu-wrap">
                    ผู้เช่า
                </div>
            </router-link>
            <router-link to="/create-bill">
                <div class="menu-wrap">
                    สร้างบิล
                </div>
            </router-link>
            <router-link to="/rented-history">
                <div class="menu-wrap">
                    รายการเช่าห้องพัก
                </div>
            </router-link>
        </div>
        <router-link to="/login">
            <div class="logoutContainer" id="logout">
                <div class="logoutText-wrap">
                    ออกจากระบบ
                </div>
            </div>
        </router-link>
    </div>
</template>

<style scoped>
.navContainer {
    width: 100%;
    height: 100vh;
    text-align: space-between;
    background-color: white;
}

.logo {
    width: 90%;
    height: 3rem;
    margin: 1rem auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    font-size: 1.5rem;
    background-color: var(--menuColor);
    border-radius: 0.3rem;
    color: white;
    margin-bottom: 0.5rem;
    box-shadow: 0px 0px 2px 2.5px var(--menuShadowColor);
}

.logo>.text,
.icon {
    margin: 0 0.5rem;
    transition: all 100ms;
}

.icon {
    width: 1.5rem;
    height: 1.5rem;
}

.icon>div {
    height: 5px;
    width: 100%;
    background-color: white;
    border-radius: 3rem;
    margin: 3px auto;
}

.menu-list {
    width: 80%;
    left: 9%;
    height: fit-content;
    display: none;
    position: fixed;
}

.menu-wrap {
    width: 100%;
    height: 2rem;
    color: var(--textColor);
    align-items: center;
    display: flex;
    justify-content: space-around;
    padding: 0.5rem;
    border-radius: 0.2rem;
    margin: 0 auto;
    background-color: var(--bgColor);
}

.menu-wrap:hover {
    background-color: var(--menuSelectedColor);
    cursor: pointer;
}

.logoutContainer {
    width: 82%;
    left: 9%;
    height: fit-content;
    display: none;
    position: fixed;
    background-color: var(--bgColor);
    top: 25.5rem;
    border-radius: 0.2rem;
}

.logoutText-wrap {
    width: 100%;
    height: 2rem;
    color: var(--textColor);
    align-items: center;
    display: flex;
    justify-content: space-around;
    padding: 0.5rem;
    border-radius: 0.2rem;
    margin: 0 auto;
}

.logoutContainer:hover {
    background-color: var(--menuSelectedColor);
    cursor: pointer;
}


@media screen and (min-width:826px) {
    .logo {
        justify-content: space-around;
    }

    .icon {
        display: none;
    }

    .menu-list {
        width: 80%;
        height: 80vh;
        display: block;
        position: relative;
    }

    .menu-wrap {
        justify-content: left;
        padding:0 0.5rem 0 -0.5rem;
    }

    .logoutContainer {
        width: 80%;
        justify-content: left;
        display: block;
        position: relative;
        top: 0rem;
    }

    .logoutText-wrap {
        justify-content: left;
    }
}
</style>
