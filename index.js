const { Pool } = require('pg'); //Crea una conexión para cada solicitud del cliente

const config = {
  user: 'postgres',
  host: 'localhost',
  password: 'bryan',
  database: 'library'
}

const pool = new Pool(config);

const getBooks = async () => {
  try {
    const res = await pool.query('select * from books'); //Haz la consulta y cuando termines, sigue con el código que este debajo
    console.log(res.rows);
    pool.end(); //En una aplicación real, no se debe utilizar esto ya que termina con la conexión
  } catch (e) {
    console.log(e);
  }
};

const insertUser = async () => {
  try {
    const text = 'INSERT INTO users (username, password) VALUES ($1, $2)';
    const values = ['john', 'jhon1234'];
  
    const res = await pool.query(text, values);
    console.log(res);
    pool.end();
  } catch (error) {
    console.log(error);
  }
}

const deleteUser = async () => {
  try {
    const text = 'DELETE FROM users WHERE username = $1'
    const value = ['cameron'];

    const res = await pool.query(text, value);
    console.log(res);
  } catch (error) {
    console.log(error);
  }
}

const editUser = async () => {
  try {
    const text = 'UPDATE users SET username = $1, password = $2 WHERE username = $3';
    const values = ['Bruce', 'bruce123', 'john'];
    const res = await pool.query(text, values)
    console.log(res);
  } catch (error) {
    console.log(error);
  }


}

// getBooks();
// insertUser();
// deleteUser();
editUser();