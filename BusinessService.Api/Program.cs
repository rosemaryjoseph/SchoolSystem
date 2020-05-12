using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Logging;

namespace BusinessService.Api
{
    public static class Program
    {
        public static void Main(string[] args)
        {
            CreateHostBuilder(args).Build().Run();
        }

        public static IWebHostBuilder CreateHostBuilder(string[] args) =>
            WebHost.CreateDefaultBuilder(args)                
                   .UseStartup<Startup>()
                   .ConfigureLogging(builder =>
                    {
                        builder.AddApplicationInsights("4ffb0a26-77bb-4e28-8d75-6ae40906c126");           
                        builder.AddFilter<Microsoft.Extensions.Logging.ApplicationInsights.ApplicationInsightsLoggerProvider>
                                     ("", LogLevel.Information);
                        builder.AddFilter<Microsoft.Extensions.Logging.ApplicationInsights.ApplicationInsightsLoggerProvider>
                         (typeof(Startup).FullName, LogLevel.Trace);
                    });
                
    }
}
