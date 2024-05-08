using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;

namespace Demo_Console
{
    class Program
    {
        static void Main(string[] args)
        {
            Process ExternalProcess = new Process();
            ExternalProcess.StartInfo.FileName = "run.bat";
            ExternalProcess.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
            ExternalProcess.StartInfo.CreateNoWindow = true;
            ExternalProcess.Start();
            ExternalProcess.WaitForExit();
        }
    }
}