defmodule Wickie.Modules.BasicInfo do
  use Wickie.DSL.Module

  module "BasicInfo" do
    layout flex: true do
      column flex: true do
        heading text: "Hello World 1", size: :h1
        heading text: "Hello World 2", size: :h2
        heading text: "Hello World 3", size: :h3
      end
    end
  end
end
