const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Welcome to the Guestbook!');
});

app.listen(port, () => {
    console.log(`Guestbook app listening on port ${port}`);
});
