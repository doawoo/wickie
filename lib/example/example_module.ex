# defmodule Wickie.Example.ExampleModule do
#   use Wickie.DSL.Module

#   module "MyExampleModule" do
#     layout do
#       column flex: true do
#         heading(text: "Hello World", size: :h1)
#         hr
#         p(text: "This is some basic text.")
#         p(text: "The button has been pushed: #{data.num_push} times!")
#       end

#       column flex: true do
#         heading(text: "The Button", size: :h1)
#         hr

#       end
#     end

#     store init: %{num_pushed: 0}, presist: true

#     hook do

#     end
#   end

#   defp button_pushed(_event, current_state) do
#     %{current_state | num_push: current_state.num_push + 1}
#   end
# end
