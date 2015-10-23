using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Database_Access_Logic_Tier;

namespace Console_Application
{
    class Program
    {
        static void Main(string[] args)
        {
            SQLCommands scd = new SQLCommands();

            Console.WriteLine();
            Console.WriteLine("Categories Before Insert");
            Console.WriteLine("------------------------");

            // use ExecuteReader method
            scd.ReadData();

            // use ExecuteNonQuery method for Insert
            scd.Insertdata();
            Console.WriteLine();
            Console.WriteLine("Categories After Insert");
            Console.WriteLine("------------------------------");

            scd.ReadData();

            ////use ExecuteNonQuery method for Update
            //scd.UpdateData();

            //Console.WriteLine();
            //Console.WriteLine("Categories After Update");
            //Console.WriteLine("------------------------------");

            //scd.ReadData();

            //// use ExecuteNonQuery method for Delete
            //scd.DeleteData();

            //Console.WriteLine();
            //Console.WriteLine("Categories After Delete");
            //Console.WriteLine("------------------------------");

            //scd.ReadData();

            //// use ExecuteScalar method
            //int numberOfRecords = scd.GetNumberOfRecords();

            //Console.WriteLine();
            //Console.WriteLine("Number of Records in bor: {0}", numberOfRecords);

            string input = Console.ReadLine();

        }
    }
}
