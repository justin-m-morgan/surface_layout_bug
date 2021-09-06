defmodule ThrowawayWeb.TestViewLive do
  use Surface.LiveView

  def render(assigns) do
    ~F"""
    <p>Test view</p>
    """
  end
end
