using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Data.SqlClient;

namespace ConnectionDB
{
    public class DBConnection:IDisposable
    {

        private MySqlConnection connection;
        
        public DBConnection()
        {
            if (connection == null)
            {

                string connstring = "server=localhost;User Id=root;database=aulataeng; password=root";

                connection = new MySqlConnection(connstring);
                connection.Open();
            }
        }

        public void Close()
        {
            connection.Close();
        }

        public void ExecuteCommand(string query)
        {
            var cmd = new MySqlCommand
            {
                CommandText = query,
                CommandType = CommandType.Text,
                Connection = connection
            };
            cmd.ExecuteNonQuery();
        }

        public MySqlDataReader ExecuteCommandWithReturn(string query)
        {
            return new MySqlCommand(query, connection).ExecuteReader();
        }

        public void Dispose()
        {
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
        }

    }
}
