const express = require('express');
const http = require('http');
const {  default: mongoose } = require('mongoose');
const { Server } = require('socket.io');


const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);

app.use(express.json());

const DB = "mongodb+srv://test:test223309@cluster0.osk7fj0.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

// const io = require('socket.io')(server);
  
//   io.on('connection', (socket) => {
//     console.log('New client connected', socket.id);
    
// socket.on("createRoom", ({ username }) => {
//       console.log(username);
//     });
//   });
  

mongoose.connect(DB).then(() => {
    console.log("Connected to MongoDB");
})
.catch((err) => {
    console.error("Error connecting to MongoDB:", err);
});


server.listen(port, "0.0.0.0", () => {
    console.log(`Server is running on port ${port}`);
})