require "spec_helper"

describe SlackResult do
  before do
    @payload = { abcd: 123, token: 456 }
    @slackman = SlackResult.new(@payload, :skip_authentication)
  end

  it "allows dynamic access of payload" do
    expect(@slackman.abcd).to eq 123
  end

  it "requires text, username, and token"

  it "requires authentication" do
    expect {
      SlackResult.new(@payload)
    }.to raise_error(SlackResultError)
  end

  it "determines if message is command" do
    payload = { text: "#command" }
    slackman = SlackResult.new(payload, :skip_authentication)

    expect(slackman.command).to eq "command"
    expect(slackman.guess).to eq false
  end

  it "determines if message is guess" do
    payload = { text: "g" }
    slackman = SlackResult.new(payload, :skip_authentication)

    expect(slackman.guess).to eq "g"
    expect(slackman.command).to eq false
  end
end