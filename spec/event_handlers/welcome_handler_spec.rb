require 'rails_helper'

describe WelcomeHandler do
  let(:perform) { EventListener.new.work event }
  let(:event) do
    {
      'type' => 'welcome',
      'user' => 'Cesar'
    }.to_json
  end

  it 'is working' do
    expect { perform }.to change(ActionMailer::Base.deliveries, :count).by 1
  end
end
