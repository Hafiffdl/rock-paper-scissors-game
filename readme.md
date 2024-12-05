# Rock Paper Scissors Game

This is a simple Rock Paper Scissors game implemented with HTML, CSS, and JavaScript for the frontend, and Node.js with Express and MySQL for the backend. The game allows users to play Rock Paper Scissors against the computer and keeps a history of the games played.

## Features

- Play Rock Paper Scissors against the computer.
- View the history of games played.
- Add new game records to the history.
- Delete game records from the history.

## Prerequisites

- Node.js
- MySQL

## Installation

1. Clone the repository:

```sh
git clone https://github.com/Hafiffdl/rock-paper-scissors-game.git
cd rock-paper-scissors-game
```

```bash
# Install the required dependencies:
npm install
```

## 📦 Database Setup
```bash
# Set up the MySQL database:
CREATE DATABASE game_suit;

USE game_suit;

CREATE TABLE history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_choice VARCHAR(10),
    computer_choice VARCHAR(10),
    result VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

# Update the MySQL connection settings in server.js if necessary:
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'game_suit'
});
```

## Usage
```bash
1 Start the backend server:
node [server.js]
2 Open index.html in your web browser.
3 Play the game and view the history of games played.
```

## API Endpoints
- GET /history: Retrieve all game history.
- POST /history: Add a new game record.
- DELETE /history/:id: Delete a game record by ID.
- PUT/ history/:id: Update a game record by ID.
