defmodule ThrowawayWeb.TestViewLive do
  use ThrowawayWeb, :live_view

  def render(assigns) do
    ~H"""
    <p>Test view</p>
    """
  end
end
