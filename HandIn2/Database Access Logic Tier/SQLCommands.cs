using System;
using System.Data.SqlClient;

namespace Database_Access_Logic_Tier
{
    public class SQLCommands
    {
        readonly SqlConnection _conn;

        public SQLCommands()
        {
            // Instantiate the connection
            _conn = new SqlConnection(
               @"Data Source=(localdb)\ProjectsV12;Initial Catalog=Handin2SSDT;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        }

        // call methods that demo SqlCommand capabilities


        /// <summary>
        /// use ExecuteReader method
        /// </summary>
        public void ReadData()
        {
            SqlDataReader rdr = null;

            try
            {
                // Open the connection
                _conn.Open();

                // 1. Instantiate a new command with a query and connection
                SqlCommand cmd = new SqlCommand(@"SELECT * FROM bor INNER JOIN Adresse ON(bor.AdresseID = Adresse.AdresseID)
                  INNER JOIN Person ON(bor.PersonID = Person.PersonID)
                  INNER JOIN Telefon ON(Person.PersonID = Telefon.PersonID)", _conn);


                // 2. Call Execute reader to get query results
                rdr = cmd.ExecuteReader();
                Console.WriteLine(rdr.FieldCount);
                // print the CategoryName of each record
                while (rdr.Read())
                {
                    for (int i = 0; i < rdr.FieldCount; i++)
                    {
                        Console.Write(rdr[i] + " ");
                    }
                    Console.WriteLine();
                }
            }
            finally
            {
                // close the reader
                rdr?.Close();

                // Close the connection
                _conn?.Close();
            }
        }

        /// <summary>
        /// use ExecuteNonQuery method for Insert
        /// </summary>
        public void Insertdata()
        {
            try
            {
                // Open the connection
                _conn.Open();

                int pID = -1;
                int aID = -1;


                // 1. Instantiate a new command with a query and connection
                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO Adresse ([Type], VejNavn, HusNummer, PostNummer, City) VALUES ( 'Skole', 'Svendborgvej', 10, 5432, 'Svendborg')", _conn))
                {
                    // 2. Call ExecuteNonQuery to send command
                    cmd.ExecuteNonQuery();
                }

                using (SqlCommand cmd = new SqlCommand(@"SELECT AdresseID FROM Adresse WHERE VejNavn = 'Svendborgvej' AND HusNummer = 10", _conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                            aID = Convert.ToInt32(reader["AdresseID"]);
                    }
                }

                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO Person ([CPRNr], [Fornavn], [Mellemnavn], [Efternavn], [type], [AdresseID]) VALUES ( 1245365243, 'Jonathan', 'Parkour', 'Spang', 'Skole'," + aID + ")", _conn))
                {
                    cmd.ExecuteNonQuery();
                }

                using (SqlCommand cmd = new SqlCommand(@"SELECT PersonID FROM Person WHERE CPRNr = 1245365243 AND Fornavn = 'Jonathan'", _conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) pID = Convert.ToInt32(reader["PersonID"]);
                    }
                }

                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO Telefon (PersonID, TelefonNr, [Type]) VALUES (" + pID + ", 21535625, 'Skole')", _conn))
                {
                    cmd.ExecuteNonQuery();
                }

                using (SqlCommand cmd = new SqlCommand(@"INSERT INTO bor (PersonID, AdresseID) VALUES (" + pID + ", " + aID + ")", _conn))
                {
                    cmd.ExecuteNonQuery();
                }

            }
            finally
            {
                // Close the connection
                if (_conn != null)
                {
                    _conn.Close();
                }
            }
        }

        /// <summary>
        /// use ExecuteNonQuery method for Update
        /// </summary>
        public void UpdateData()
        {
            try
            {
                // Open the connection
                _conn.Open();

                // prepare command string
                string updateString = @"
                 update Person
                 set Fornavn = 'Jeba'
                 where CPRNr = 1245365243";

                // 1. Instantiate a new command with command text only
                using (SqlCommand cmd = new SqlCommand(updateString, _conn))
                {
                    // 3. Call ExecuteNonQuery to send command
                    cmd.ExecuteNonQuery();
                }


            }
            finally
            {
                // Close the connection
                if (_conn != null)
                {
                    _conn.Close();
                }
            }
        }

        /// <summary>
        /// use ExecuteNonQuery method for Delete
        /// </summary>
        public void DeleteData()
        {
            try
            {
                // Open the connection
                _conn.Open();

                // prepare command string
                string deleteString = @"
                 delete from bor
                 where PersonID = 1";

                // 1. Instantiate a new command
                using (SqlCommand cmd = new SqlCommand(deleteString, _conn))
                {
                    cmd.ExecuteNonQuery();
                }
            }
            finally
            {
                // Close the connection
                if (_conn != null)
                {
                    _conn.Close();
                }
            }
        }

        /// <summary>
        /// use ExecuteScalar method
        /// </summary>
        /// <returns>number of records</returns>
        public int GetNumberOfRecords()
        {
            int count = -1;

            try
            {
                // Open the connection
                _conn.Open();

                // 1. Instantiate a new command
                using (SqlCommand cmd = new SqlCommand("select count(*) from bor", _conn))
                {
                    // 2. Call ExecuteScalar to send command
                    count = (int)cmd.ExecuteScalar();
                }
            }
            finally
            {
                // Close the connection
                if (_conn != null)
                {
                    _conn.Close();
                }
            }
            return count;
        }
    }
}