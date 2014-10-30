require "spec_helper"

describe SlackMan do
  before do
    @payload = { abcd: 123, token: 456 }
    @slackman = SlackMan.new(@payload, :skip_authentication)
  end

  it "allows dynamic access of payload" do
    expect(@slackman.abcd).to eq 123
  end

  it "requires authentication" do
    expect {
      SlackMan.new(@payload)
    }.to raise_error(SlackManError)
  end

  it "determines if message is command" do
    payload = { text: "#command" }
    slackman = SlackMan.new(payload, :skip_authentication)

    expect(slackman.command).to eq "command"
    expect(slackman.guess).to eq false
  end

  it "determines if message is guess" do
    payload = { text: "g" }
    slackman = SlackMan.new(payload, :skip_authentication)

    expect(slackman.guess).to eq "g"
    expect(slackman.command).to eq false
  end
end