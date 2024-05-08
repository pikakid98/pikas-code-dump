using System;
using System.Diagnostics;

namespace ConsoleApplication
{
    class Program
    { 
        static void Main(string[] args)
        {
         var process = new Process();
         var startinfo = new ProcessStartInfo(@"Data\mainrun.bat", "\"1st_arg\" \"2nd_arg\" \"3rd_arg\"");
         startinfo.RedirectStandardOutput = true;
         startinfo.UseShellExecute = false;
         process.StartInfo = startinfo;
         process.OutputDataReceived += (sender, argsx) => Console.WriteLine(argsx.Data); // do whatever processing you need to do in this handler
         process.Start();
         process.BeginOutputReadLine();

        }
    }
}