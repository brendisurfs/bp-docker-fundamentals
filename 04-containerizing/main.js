const express = require("express");
const morgan = require("morgan");

const app = express();

// middleware
app.use(morgan("common"));

app.get("/", (req, res)=> {
    res.send("Hello from docker nerds")
    console.info("hello from docker");  
});

const PORT = 8080;

app.listen(PORT, ()=> console.log(`listening on port ${8080}`));
