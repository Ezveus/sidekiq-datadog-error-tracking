# frozen_string_literal: true

RSpec.describe Sidekiq::Datadog::Error::Tracking do
  it "has a version number" do
    expect(Sidekiq::Datadog::Error::Tracking::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
