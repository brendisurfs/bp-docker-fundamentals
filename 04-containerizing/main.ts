import express from "express";

const app = express();

app.get("/", ()=> {
    console.log("hello from docker");  
});

const PORT = 8080;

app.listen(PORT, ()=> console.log(`listening on port ${8080}`));
