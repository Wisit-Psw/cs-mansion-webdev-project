import HomePage from "./pages/HomePage.vue"
import Bill from "./pages/Bill.vue"
import WaitingBill from "./pages/WaitingBill.vue"
import Room from "./pages/Room.vue"
import User from "./pages/User.vue"
import CreateBill from "./pages/CreateBill.vue"
import RentedHistory from "./pages/RentedHistory.vue"
import PageNotFound from "./pages/PageNotFound.vue"
import Detail from "./pages/Detail.vue"
import Login from "./pages/Login.vue"
export const routes = [
    // {
    //     path: '/login', component: LoginPage,
    //     beforeEnter: async () => {
    //         const isAuthenticated = await authenticate();
    //         if( isAuthenticated ) return '/';
    //     },
    // },
    {
        path: '/', component: HomePage,
    },
    {
        path: '/bill', component: Bill,
    },
    {
        path: '/waitingbill', component: WaitingBill,
    },
    {
        path: '/room', component: Room,
    },
    {
        path: '/user', component: User,
    },
    {
        path: '/create-bill', component: CreateBill,
    },
    {
        path: '/rented-history', component: RentedHistory,
    },
    {
        path: '/detail', component: Detail,
    },
    {
        path: '/login', component: Login,
    },
    { 
        path: '/:pathMatch(.*)*', component: PageNotFound 
    }
]

export default routes;