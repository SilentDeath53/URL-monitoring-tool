# URL Monitoring Tool
URL monitoring tool using Elixir.

1- Create a new Elixir project by running the following command in your terminal:   -- Arduino

mix new url_monitoring_tool

@Note: Update the "mix.exs" file to include the httpoison and timex dependencies.

2- Fetch the dependencies by running the following command:

mix deps.get

3- Start monitoring a URL by running the following code in your Elixir console:

URLMonitoringTool.monitor("https://example.com")

@Note2: The default interval is set to 5000 milliseconds (5 seconds).

# Created By Silent Death_53
