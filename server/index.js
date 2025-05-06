const express = require('express');
const http = require('http');
const {  default: mongoose } = require('mongoose');
const { Server } = require('socket.io');


const app = express();
const port = process.env.PORT || 3000;
var server = http.createServer(app);

app.use(express.json());

const DB = "mongodb+srv://test:test223309@cluster0.osk7fj0.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

const io = new Server(server); // Initialize the Socket.IO server

io.on('connection', (socket) => {
    console.log('A user connected:', socket.id);
    socket.on('createRoom', ({username}) => {});

    socket.on('disconnect', () => {
        console.log('User disconnected:', socket.id);
    });

    // Add other event listeners here if needed
});

mongoose.connect(DB).then(() => {
    console.log("Connected to MongoDB");
})
.catch((err) => {
    console.error("Error connecting to MongoDB:", err);
});




server.listen(port, '0.0.0.0', () => {
    console.log(`Server is running on port ${port}`);
})