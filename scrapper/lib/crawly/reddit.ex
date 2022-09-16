defmodule Crawly.Reddit do
  use Crawly.Spider

  @impl Crawly.Spider
  def base_url(), do: "https://www.reddit.com"

  @impl Crawly.Spider
  def init() do
    [start_urls: [
      "https://www.reddit.com/search/?q=crypto"
    ]]

  end

  @impl Crawly.Spider
  def parse_item(response) do
    # Parse response body to document
    {:ok, document} = Floki.parse_document(response.body)

    # Create item (for pages where items exists)
    IO.puts(document)

    %{items: [], requests: []}
  end

  def test do
    res = Crawly.fetch(base_url())
    {:ok, doc} = Floki.parse_document(res.body)

    IO.puts(doc)
  end

end
