using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class ChangePathHere
{
    static string mantas_PATH = @"Data Source=.\sqlexpress;Initial Catalog=C:\USERS\MANTA\DESKTOP\WAXWASH\WAXWASH\APP_DATA\WAXWASH2.0.MDF;Integrated Security=True";
    static string bog_PATH = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Bogdan\Desktop\waxwasz\WaxWash\App_Data\waxwash2.0.mdf;Integrated Security=True;Connect Timeout=30";
    static string matt_PATH = @"//add your path here";
    static string directory = System.IO.Directory.GetCurrentDirectory();

    //Any guests please add you path here
    static string guest_PATH = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\waxwash2.0.mdf;Integrated Security=True;Connect Timeout=30";

    //Change the path here
    public static  string path_CHANGE = guest_PATH;

    public static string IoDatabase()
    {
        var directory = System.IO.Directory.GetCurrentDirectory();
        var connectionString = @"Data Source=(localdb)\mssqllocaldb;AttachDbFilename=" + directory + "\\App_Data\\waxwash2.0.mdf;Integrated Security=True;Connect Timeout=30;";
        return connectionString;
    }

}