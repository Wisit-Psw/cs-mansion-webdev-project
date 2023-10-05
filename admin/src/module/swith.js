export const switchModule = {
    data() {
      return {
        isChecked: false,
      };
    },
    methods: {
      toggleSwitch() {
        this.isChecked = !this.isChecked;
      },
    },
  };
  export default switchModule;