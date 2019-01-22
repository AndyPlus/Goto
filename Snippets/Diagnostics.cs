using System;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Threading;

namespace DbgTest
{
    class Program
    {
        static void Main(string[] args)
        {
            int x = 1, y = 2;
            var result = Add(x, y);
            Console.WriteLine("result:{0}",result);
        }
        static int Add(int x, int y)
        {
            System.Diagnostics.Debugger.Break();
            System.Diagnostics.Debug.WriteLine("This is log Debug");
            System.Diagnostics.Trace.WriteLine("This is log Trace");
            System.Diagnostics.Trace.Assert(true,"Must Assert true");
            System.Diagnostics.Contracts.Contract.Ensures(true, "Must Ensure true");
            return x + y;
            throw new NotImplementedException("just a test");
        }

        static void Timer()
        {
            Stopwatch stopWatch = new Stopwatch();
            stopWatch.Start();
            Thread.Sleep(10000);
            stopWatch.Stop();
            TimeSpan ts = stopWatch.Elapsed;
            Console.WriteLine("RunTime " + ts);
        }
    }
}
