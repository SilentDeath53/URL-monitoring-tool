defmodule URLMonitoringTool do
  @moduledoc false

  def monitor(url, interval \\ 5000) do
    loop(url, interval)
  end

  defp loop(url, interval) do
    case check(url) do
      :ok ->
        IO.puts "URL is accessible: #{url}"
      :error ->
        IO.puts "URL is down: #{url}"
    end

    :timer.sleep(interval)
    loop(url, interval)
  end

  defp check(url) do
    case HTTPoison.get(url) do
      {:ok, %{status_code: 200}} -> :ok
      _ -> :error
    end
  end
end
