require "spec_helper"

describe Lita::Handlers::GustavoSantos, lita_handler: true do
  it { routes_command("gustavo_santos").to(:gustavo_santos) }

end
