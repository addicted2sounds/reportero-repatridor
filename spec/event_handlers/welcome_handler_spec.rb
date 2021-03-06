require 'rails_helper'

describe WelcomeHandler, type: :event_handler do
  let(:perform) { EventListener.new.work event }
  let(:event) do
    {
      'type' => 'welcome',
      'data' => {
        'firstname' => 'Yuliy',
        'lastname' => 'Cesar',
        'email' => 'user@example.com'
      }
    }.to_json
  end

  it 'is working' do
    expect { perform }.to change(ActionMailer::Base.deliveries, :count).by 1
  end
end
