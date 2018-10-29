using System;

namespace Microsoft.PFE.Samples
{
    public class Program
    {
        static void Main()
        {
            Console.WriteLine("Enter a message:");
        string input = Console.ReadLine();
            Data d = new Data
            {
                ID = 5,
                Message = input,
                CurrentDateTime = System.DateTime.Now
            };
            Console.WriteLine("You entered: " + d);
        }
    }

    public class Data
    {
        public int ID {get; set;}
        public string Message {get; set;}
        public DateTime CurrentDateTime {get; set;}


        public override string ToString()
        {
            Console.ReadLine();
            return string.Format("ID:{0} {1} at {2}", ID, Message, 

CurrentDateTime.ToLongTimeString());
        }
    }
}