const { pool } = require('./connect');

// Function to get all player information
const get = async () => {
  const client = await pool.connect();
  try {
    const res = await client.query('Select * from player');
    return res.rows;
  } catch (error) {
    console.error(error);
  } finally {
    client.release();
  }
}

// Function to get the top 10 players' scores
const getscore = async () => {
  const client = await pool.connect();
  try {
    const res = await client.query('Select * from player order by score desc limit 10');
    return res.rows;
  } catch (error) {
    console.error(error);
  } finally {
    client.release();
  }
}

// Function for user login
const login = async (vorname,nachname,profil) => {
  const client = await pool.connect();
  try {
    const res = await client.query('SELECT * FROM player WHERE nachname = $1', [nachname]);
    if(res.rowCount == 0){
      await client.query('INSERT INTO player(vorname,nachname,score,profil) values($1,$2,$3,$4)', [vorname, nachname,0,profil]);
    }
  } catch (error) {
    console.error(error);
  } finally {
    client.release();
  }
}

// Function to upload player scores
const upload = async (nachname,score) => {
  const client = await pool.connect();
  try {
    const res = await client.query('UPDATE player SET score = $1 where nachname = $2', [score,nachname]);
  } catch (error) {
    console.error(error);
  } finally {
    client.release();
  }
}



module.exports = { get,getscore,login,upload};
