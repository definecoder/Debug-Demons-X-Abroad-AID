require('dotenv').config();

const express = require('express');
const cors = require('cors');

const app = express();

const authenticateUser = require('./middlewares/auth');
// routers

const authRouter = require('./routes/auth')
const aspirantRouter = require('./routes/aspirants')
const bookingRouter = require('./routes/booking')
const expertRouter = require('./routes/experts')
const requestRouter = require('./routes/requests')

// const authRouter = require('./routes/auth');
// const tasksRouter = require('./routes/tasks');
// error handler


const { createAspirant } = require('./controllers/aspirant')

app.use(express.json());
app.use(cors());

// routes
// app.use('/api/auth', authRouter);
// app.use('/api/tasks', authenticateUser, tasksRouter);

app.use('/api/aspirants', aspirantRouter)
app.use('/api/booking', bookingRouter)
app.use('/api/auth', authRouter)
app.use('/api/requests', requestRouter)
app.use('/api/experts', expertRouter)

const port = 8282;


// api's

// /api/aspirants/create/
// /api/aspirants/
// /api/aspirants/:id 

// /api/experts/create
// /api/experts
// /api/experts/:id

// /api/auth/login
// /api/auth/adminLogin
// /api/auth/adminLogin
// /api/auth/getuapprovedUsers
// /api/auth/approveUser



// /api/booking/create 
// /api/booking/update/schedule
// /api/booking/update/status
// /api/booking/update/review
// /api/booking/update/rating
// /api/booking/update/aspirants
// /api/booking/update/experts
//
//
// 
// 
// 
// /api/requests/create
// /api/requests/:id (get)
// /api/requests/:id (delete)
// 
// 

app.get('/hi', (req, res) => {
  res.send('hello')
})

app.post('/create', async (req, res) => {
  await createAspirant(req, res);
})

app.listen(port, () =>
  console.log(`Server is listening on port ${port}...`)
);

