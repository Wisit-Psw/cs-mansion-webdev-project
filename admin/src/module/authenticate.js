import { useUserStore } from "./userstore"
import axios from "axios"

export const authenticate = async () => {
    const userstore = useUserStore()
    try{
        const result = await axios.get("http://localhost:3001"+"/api/admin/accessSession",{withCredentials:true});
        console.log(result)
            if(result.data.status === "success" ){
            userstore.setInfo(result.data?.response);
            return true;
        }
        return userstore.data?true:false;

    }catch{
        console.log("authentication error")
        return false;
    }
    
}

export default authenticate;