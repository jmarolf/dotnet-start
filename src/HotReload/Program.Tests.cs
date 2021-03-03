#if DEBUG
using System.Diagnostics;
using System.IO;

using Microsoft.CodeAnalysis.MSBuild;


using Xunit;

namespace HotReload
{
    public partial class Program
    {
        [Fact]
        public static void TestConsoleProgressReporter()
        {
            var output = new StringWriter();
            var reporter = new ConsoleProgressReporter(output);
            var progress = new ProjectLoadProgress();
            reporter.Report(progress);
            var result = output.ToString();
            Assert.Equal("Evaluate        0:00.0000000    \r\n", result);
        }
    }
}
#endif