const app = new Vue({
    el: '#app',
    data: {
      target: 170,
      presets: [{
            icon: "fire",
            name: "Preheat",
            target: 250,
        },
        {
            name: "HDPE",
            target: 170,
        },{
            name: "LDPE",
            target: 180,
        },{
            name: "PP",
            target: 150,
        },{
            name: "PS",
            target: 140,
        },{
            name: "PLA",
            target: 160,
        },{
            name: "ABS",
            target: 190,
        },
      ],

      temp: [],
      out: [],
      bot: [
          { tag:14, argt:3, argh:12},
          { tag:15, argt:4, argh:13},
          { tag:16, argt:5, argh:14},
          { tag:13, argt:2, argh:11},
          { tag:11, argt:0, argh:9},
          { tag:17, argt:6, argh:15},
          { tag:12, argt:1, argh:10},
          { tag:19, argt:8, argh:17},
          { tag:18, argt:7, argh:16},
      ],
      top: [
        { tag:4, argt:12, argh:3},
        { tag:5, argt:13, argh:4},
        { tag:6, argt:14, argh:5},
        { tag:3, argt:11, argh:2},
        { tag:1, argt:9, argh:0},
        { tag:7, argt:15, argh:6},
        { tag:2, argt:10, argh:1},
        { tag:9, argt:17, argh:8 },
        { tag:8, argt:16, argh:7 },
      ],
      timeLeft: 1800,
      mode: [],
      targetTemp: [],
      portBaud: 115200,
      portName: "/dev/ttyACM0",
      varName: "heater",
      varValue: [],
      msg: ""
    },
    methods: {
        portConnect: async function() {
            await axios.post("/port", {
                close: false,
                port_name: this.portName,
                port_baud: this.portBaud
            })
            this.message("연결 성공")
        },
        portDisconnect: async function() {
            await axios.post("/port", {
                close: true,
                port_name: "",
                port_baud: 0
            })
            this.message("연결 해제 성공")
        },
        heat: async function(argh, p) {
            let kind = "heater";
            let value = [argh, p];
            try {
                await axios.post("/control", {
                    kind: kind,
                    data: value
                })
                this.message(`${kind} OK`);
            } catch (err){
                this.message(err);
            }
        },
        varControl: async function(arg1, arg2) {
            let kind = "", value = [];
            switch(arg1) {
                case 1:
                    kind = "heater";
                    value = [Number(this.varValue[1]), Number(this.varValue[2])];
                    break;    
                case 2:
                    kind = "heater_range";
                    value = [Number(this.varValue[1]), Number(this.varValue[2]), Number(this.varValue[3])];
                    break;        
                case 3:
                    kind = "motor";
                    switch (arg2) {
                        case 1: //UP
			    // value = [128 + parseInt(Number(this.varValue[1]) / 100)];
                            value = [128+30];
                            // value = [128 + parseInt(Number(this.varValue[1]) / 100)];
                            break;
                        case 2: //DOWN
                            value = [128-30];
                            // value = [128 - parseInt(Number(this.varValue[1]) / 100)];
                            break;
                        }
                    break;
                case 4:
                    kind = "mode_range"
                    switch (arg2) {
                        case 0: //manual
                            value = [0, 17, 0];
                            break;
                        case 1: //auto
                            value = [0, 17, 1];
                            break;
                    }
                    break;
                case 5:
                    kind = "target_temp_range";
                    t = parseInt(Number(this.varValue[3]))
                    value = [Number(this.varValue[1]), Number(this.varValue[2]), t];
                    break; 
            }
            try {
                await axios.post("/control", {
                    kind: kind,
                    data: value
                })
                this.message(`${kind} OK`);
            } catch (err){
                this.message(err);
            }
        },
        addTime : async function(sec) {
            this.timeLeft += sec;
        },
        message: function(msg) {
            this.msg = msg;
            let that = this;
            setTimeout(() => {
                that.msg = "";
            }, 2000);
        }
    },
    mounted: function() {
        const that = this;
        function getRandomInt(min, max) {
            min = Math.ceil(min);
            max = Math.floor(max);
            return Math.floor(Math.random() * (max - min) + min); //The maximum is exclusive and the minimum is inclusive
        }
        setInterval(() => {
            axios.get("/status").then(resp => {
                // that.temp = Array.apply(null, Array(18)).map(() => getRandomInt(20,200))
                that.temp = resp.data.temperature;
                that.out = resp.data.output;
                that.targetTemp = resp.data.target_temperature;
                that.mode = resp.data.mode;
                console.log(resp);
            });
        }, 2000)
    }
})
