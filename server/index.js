const express = require('express');
const http = require('http');
const {  default: mongoose } = require('mongoose');


const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);


var io = require('socket.io')(server);

app.use(express.json());

const DB = "mongodb+srv://test:test223309@cluster0.osk7fj0.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";


mongoose.connect(DB).then(() => {
    console.log("Connected to MongoDB");
})
.catch((err) => {
    console.error("Error connecting to MongoDB:", err);
});




server.listen(port, '0.0.0.0', () => {
    console.log(`Server is running on port ${port}`);
})